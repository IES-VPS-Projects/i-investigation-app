import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
import 'package:iinvestigation/features/dcio/data/models/users/users.dart';
import 'package:iinvestigation/features/dcio/presentations/state/dcio_cubit.dart';

import 'officer_list.dart';

class OfficerPicker extends StatefulWidget {
  const OfficerPicker({super.key});

  @override
  _OfficerPickerState createState() => _OfficerPickerState();
}

class _OfficerPickerState extends State<OfficerPicker> {
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
          title: Text("Pick officer"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                DragTarget<Users>(
                  builder: (context, candidate, rejected) {
                    int officersPicked =
                        context.watch<DcioCubit>().state.payload.officers ==
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
      ),
    );
  }

  _renderOfficers() {
    if (context.watch<DcioCubit>().state.payload.officers == null) {
      return Center(
        child: Text("No Officer Picked"),
      );
    }
    return ListView(
      children: context
          .watch<DcioCubit>()
          .state
          .payload
          .officers!
          .map((Users officer) {
        return Dismissible(
          background: Container(color: const Color.fromARGB(111, 244, 67, 54)),
          key: ObjectKey(officer),
          onDismissed: (direction) {
            // setState(() {

            //   pickedUsers.remove(officer);
            // });

            context.read<DcioCubit>().removeOffiersToCase(officer);
          },
          child: Card(
            child: ListTile(
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
