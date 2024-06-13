import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/utilities/app_common_extentions.dart';
import 'package:iinvestigation/core/utilities/app_navigation.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
import 'package:iinvestigation/features/dashboard/presentation/pages/dashboard.dart';
import 'package:iinvestigation/features/dcio/data/models/users/users.dart';
import 'package:iinvestigation/features/dcio/presentations/state/dcio_cubit.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';

import 'officer_listing.dart';

class OfficerPickerSettings extends StatefulWidget {
  final OpenCases caseFile;
  const OfficerPickerSettings({super.key, required this.caseFile});

  @override
  _OfficerPickerState createState() => _OfficerPickerState();
}

class _OfficerPickerState extends State<OfficerPickerSettings> {
  @override
  void initState() {
    super.initState();
    context.read<DcioCubit>().getUsers();
  }

  List<Users> pickedUsers = [];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RefreshIndicator(
      onRefresh: () => context.read<DcioCubit>().getUsers(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Pick officer"),
            actions: [
              IconButton(
                  onPressed: () {
                    Map<String, dynamic> payload = {
                      'caseId': widget.caseFile.id,
                      'officers': context
                          .read<DcioCubit>()
                          .state
                          .payload
                          .officers!
                          .map((e) => e.id)
                          .toList(),
                      'lead_officer': widget.caseFile.leadOfficer!.id
                    };
                    print(payload);

                    context
                        .read<DcioCubit>()
                        .updateOfficers(payload)
                        .then((value) {
                      context.appNavigatorPush(Dashboard());
                      context.showCustomSnackBar("Officers added to case");
                    });
                    // context.read<DcioCubit>().addOfficersListToCase(pickedUsers);
                    // Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.save))
            ],
          ),
          body: context.watch<DcioCubit>().state.maybeWhen(
                orElse: () => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        DragTarget<Users>(
                          builder: (context, candidate, rejected) {
                            int officersPicked = context
                                        .watch<DcioCubit>()
                                        .state
                                        .payload
                                        .officers ==
                                    null
                                ? 0
                                : context
                                    .watch<DcioCubit>()
                                    .state
                                    .payload
                                    .officers!
                                    .length;
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Text("Officers Picked ($officersPicked)"),
                                Container(
                                  height: 200.0,
                                  child: _renderOfficers(),
                                )
                              ],
                            );
                          },
                          onAccept: (data) {
                            onAcceptOfficer(data);
                          },
                          onWillAcceptWithDetails: (data) {
                            // Users officer = Users.fromDocument(data);
                            // return widget.Officers.firstWhere((test) {
                            //       return test.idNumber == officer.idNumber;
                            //     }, orElse: () => null) ==
                            //     null;
                            return true;
                          },
                        ),
                        Container(height: 270.0, child: OfficersListing())
                      ],
                    )),
                loading: (payload) => Center(
                  child: CircularProgressIndicator(),
                ),
              )),
    );
  }

  _renderOfficers() {
    if (context.watch<DcioCubit>().state.payload.officers == null) {
      return const Center(
        child: Text("No Officer Picked"),
      );
    }
    return ListView(
      children: context.watch<DcioCubit>().state.payload.officers!.isEmpty
          ? [
              const Center(
                child: Text('Drag to top to add officers'),
              )
            ]
          : context
              .watch<DcioCubit>()
              .state
              .payload
              .officers!
              .map((Users officer) {
              return officer.serviceNumber ==
                      widget.caseFile.leadOfficer!.serviceNumber
                  ? Card(
                      child: ListTile(
                        onTap: () {},
                        title: Text(officer.name!),
                        subtitle: Text(officer.serviceNumber!),
                      ),
                    )
                  : Dismissible(
                      background: Container(
                          color: const Color.fromARGB(111, 244, 67, 54)),
                      key: ObjectKey(officer),
                      onDismissed: (direction) {
                        context.read<DcioCubit>().removeOffiersToCase(officer);
                      },
                      child: Card(
                        child: ListTile(
                          trailing: IconButton(
                              onPressed: () {
                                context
                                    .read<DcioCubit>()
                                    .removeOffiersToCase(officer);
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.redAccent,
                              )),
                          onTap: () {},
                          title: Text(officer.name!),
                          subtitle: Text(officer.serviceNumber!),
                        ),
                      ),
                    );
            }).toList(),
    );
  }

  void onAcceptOfficer(data) async {
    logger.d(data);
    setState(() {
      pickedUsers.add(data);
      // widget.Officers.add(Officer.fromDocument(data));
    });

    context.read<DcioCubit>().addOffiersToCase(data);
  }
}
