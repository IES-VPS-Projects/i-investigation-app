import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/data/models/entities/iprs_result_object.dart';
import 'package:iinvestigation/core/data/network_datasource/config.dart';
import 'package:iinvestigation/core/utilities/line.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';

import '../../../data/models/iprs_model/iprs_model.dart';

class IprsDialog extends StatefulWidget {
  final String id_no;
  const IprsDialog(this.id_no, {super.key});

  @override
  State<IprsDialog> createState() => _IprsDoalogState();
}

class _IprsDoalogState extends State<IprsDialog> {
  List<IprsModel> iprs = [];
  int? id;
  String? first_name;
  String? middle_name;
  String? last_name;
  DateTime? dob;
  String? gender;
  int? genderId;
  String? nationality;
  int? nationalityId;
  String? image;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<InboxCubit>().getIPRS(idNo: widget.id_no);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: context.watch<InboxCubit>().state.maybeWhen(
            loadingIPRS: (_) => SizedBox(
              height: 150,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            doneIPRS: (payload) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                HorizontalOrLine(
                    indentMultiply: 20,
                    child: Text(
                      widget.id_no,
                    )),
                payload.iprsModel!.id == null
                    ? Card(
                        child: ListTile(
                          title: Text('No IPRS data with that ID'),
                          trailing: Icon(Icons.content_paste_off),
                        ),
                      )
                    : ListTile(
                        leading: Container(
                          // padding: EdgeInsets.all(10),
                          // padding: EdgeInsets.symmetric(horizontal: 8.0),
                          height: 100,
                          width: 100,

                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.network(
                            image ??
                                '$VPS_PORTAL_BASE_URL/static/vps/person-placeholder.png',
                            errorBuilder: (context, error, stackTrace) => Icon(
                              Icons.error,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        title: Text(
                            '${payload.iprsModel?.firstName} ${payload.iprsModel?.middleName} ${payload.iprsModel?.lastName}'),
                        subtitle: Text(
                            '${payload.iprsModel?.gender!.toUpperCase()} | ${payload.iprsModel?.nationality!.toUpperCase()}'),
                        // trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      )
              ],
            ),
            orElse: () => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // + https://pub.dev/packages/auto_size_text#troubleshooting
                // HorizontalOrLine(
                //   indentMultiply: 20,
                //   child: CommonText(
                //     title: widget.idController.text,
                //   )),
                HorizontalOrLine(
                    indentMultiply: 20,
                    child: Text(
                      widget.id_no,
                    )),

                id == null
                    ? Card(
                        child: ListTile(
                          title: Text('No IPRS data with that ID'),
                          trailing: Icon(Icons.content_paste_off),
                        ),
                      )
                    : ListTile(
                        leading: Container(
                          // padding: EdgeInsets.all(10),
                          // padding: EdgeInsets.symmetric(horizontal: 8.0),
                          height: 100,
                          width: 100,

                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.network(
                            image ??
                                '$VPS_PORTAL_BASE_URL/static/vps/person-placeholder.png',
                            errorBuilder: (context, error, stackTrace) => Icon(
                              Icons.error,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        title: Text('$first_name $middle_name $last_name'),
                        subtitle: Text(
                            '${gender!.toUpperCase()} | ${nationality!.toUpperCase()}'),
                        // trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      )
              ],
            ),
          ),
      actions: [
        (last_name == null || first_name == null || middle_name == null)
            ? UnconstrainedBox()
            : TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "CANCEL",
                ),
              ),
        TextButton(
          onPressed: () {
            if (context.read<InboxCubit>().state.payload.iprsModel!.lastName ==
                    null ||
                context.read<InboxCubit>().state.payload.iprsModel!.firstName ==
                    null ||
                context
                        .read<InboxCubit>()
                        .state
                        .payload
                        .iprsModel!
                        .middleName ==
                    null) {
              Navigator.of(context).pop();
              // SnackbarWidget.errorSnackBar(
              //     context, "No IPRS data with that ID");
              //   return;
            } else
              Navigator.of(context).pop(
                IPRS(
                    dateOfBirth: context
                        .read<InboxCubit>()
                        .state
                        .payload
                        .iprsModel
                        ?.dateOfBirth,
                    id: context
                        .read<InboxCubit>()
                        .state
                        .payload
                        .iprsModel!
                        .idNo!
                        .toString(),
                    lastName: context
                        .read<InboxCubit>()
                        .state
                        .payload
                        .iprsModel!
                        .lastName!,
                    middleName: context
                        .read<InboxCubit>()
                        .state
                        .payload
                        .iprsModel!
                        .middleName!,
                    firstName: context
                        .read<InboxCubit>()
                        .state
                        .payload
                        .iprsModel!
                        .firstName!,
                    gender: context
                        .read<InboxCubit>()
                        .state
                        .payload
                        .iprsModel!
                        .gender!,
                    genderId: genderId,
                    nationality: context
                        .read<InboxCubit>()
                        .state
                        .payload
                        .iprsModel!
                        .nationality!,
                    nationalityId: nationalityId),
              );
          },
          child: Text(
            "OK",
          ),
        )
      ],
    );
  }
}
