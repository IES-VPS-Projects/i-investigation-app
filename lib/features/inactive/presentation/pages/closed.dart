import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/utilities/app_navigation.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import './view_closed_cases.dart';

class Inactive extends StatefulWidget {
  const Inactive({super.key});

  @override
  State<Inactive> createState() => _ClosedCasesState();
}

class _ClosedCasesState extends State<Inactive> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<InboxCubit>().getAllCases();
  }

 void _onLoading() async { 
    await Future.delayed(Duration(milliseconds: 100));
    // if failed,use loadFailed(),if no data return,use LoadNodata()

    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Inactive Cases"),
          centerTitle: true,
        ),
        body:
        SmartRefresher(
        enablePullDown: true, 

        header: const WaterDropHeader(),
        controller: _refreshController, 
        onLoading: _onLoading,
         child: context.watch<InboxCubit>().state.maybeMap(
                orElse: () {
                  return context.watch<InboxCubit>().state.payload.cases == null
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView(
                          children: context
                              .watch<InboxCubit>()
                              .state
                              .payload
                              .cases!
                              .map((document) {
                            return document.status != "SUSPENDED"
                                ? const SizedBox()
                                : document.occurenceId == null
                                        ? ListTile(
                                            leading: createAvatar(
                                                "${document.internalOccurence!.obNo}"),
                                            subtitle: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "${document.internalOccurence?.title == null ? '' : document.internalOccurence!.title}"),
                                                Text(
                                                    "${document.internalOccurence?.narrative == null ? '' : document.internalOccurence!.narrative}"),
                                              ],
                                            ),
                                            title: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("DCI/${document.id}/2024"),
                                                Text(
                                                    "${document.internalOccurence?.obNo}"),
                                              ],
                                            ),
                                            isThreeLine: true,
                                            trailing: document.status == "OPEN"
                                                ? const Chip(
                                                    labelPadding:
                                                        EdgeInsets.all(0.1),
                                                    label: Icon(Icons.check_box),
                                                    backgroundColor: Colors.green,
                                                  )
                                                : const Chip(
                                                    labelPadding:
                                                        EdgeInsets.all(0.1),
                                                    label: Icon(
                                                        Icons.close, color: Colors.black,
                                                        ),
                                                    backgroundColor: Colors.amber,
                                                  ),
                                            onTap: () {
                                              context.appNavigatorPush(
                                                  ViewCaseClosed(document));
                                            },
                                            dense: true,
                                          )
                                       :Card(
                                    child: ListTile(
                                      leading: createAvatar(
                                          "${document.occurence?.obNo}"),
                                      title: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                          Row(
                                                   children: [
                                                     Text(
                                                      "Case Number: \t"),
                                                     Text(
                                                      "DCI/${document.id}/2024"),
                                                   ],
                                                 ),
                                        Text("${document.occurence?.obNo}"),
                                      ],
                                    ),subtitle: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Align(
                                              alignment:
                                                  FractionalOffset.centerLeft,
                                              child: document.occurence!
                                                          .occurenceDetails ==
                                                      null
                                                  ? Text('${document.occurence}')
                                                  : document
                                                          .occurence!
                                                          .occurenceDetails!
                                                          .isEmpty
                                                      ? const Text('')
                                                      : Text(
                                                          "${(jsonDecode(document.occurence!.occurenceDetails!.first.details!) as List).map((e) => e['category']['name'])}")),
                                          Align(
                                              alignment:
                                                  FractionalOffset.centerLeft,
                                              child: Text(
                                                  "${document.occurence?.obNo}")),
                                        ],
                                      ),
                                      isThreeLine: true,
                                      trailing: document.status == "OPEN"
                                          ? const Chip(
                                              labelPadding: EdgeInsets.all(0.1),
                                              label: Icon(Icons.check_box, color: Colors.black,),
                                              backgroundColor: Colors.green,
                                            )
                                          : const Chip(
                                              labelPadding: EdgeInsets.all(0.1),
                                              label: Icon(Icons.file_copy),
                                              backgroundColor: Colors.red,
                                            ),
                                      onTap: () {
                                        context.appNavigatorPush(
                                            ViewCaseClosed(document));
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => ViewCase(document)));
                                      },
                                      dense: true,
                                    ),
                                  );
                          }).toList(),
                        );
                },
                cases: (value) => value.payload.cases == null
                    ? SizedBox()
                    : ListView(
                        children: value.payload.cases!.map((document) {
                          return document.status != "SUSPENDED"
                              ? const SizedBox()
                              :document.occurenceId == null
                                        ? ListTile(
                                            leading: createAvatar(
                                                "${document.internalOccurence!.obNo}"),
                                            subtitle: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "${document.internalOccurence?.title == null ? '' : document.internalOccurence!.title}"),
                                                Text(
                                                    "${document.internalOccurence?.narrative == null ? '' : document.internalOccurence!.narrative}"),
                                              ],
                                            ),
                                            title: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("DCI/${document.id}/2024"),
                                                Text(
                                                    "${document.internalOccurence?.obNo}"),
                                              ],
                                            ),
                                            isThreeLine: true,
                                            trailing: document.status == "OPEN"
                                                ? const Chip(
                                                    labelPadding:
                                                        EdgeInsets.all(0.1),
                                                    label: Icon(Icons.check_box),
                                                    backgroundColor: Colors.green,
                                                  )
                                                : const Chip(
                                                    labelPadding:
                                                        EdgeInsets.all(0.1),
                                                    label: Icon(
                                                        Icons.close, color: Colors.black,
                                                        ),
                                                    backgroundColor: Colors.amber,
                                                  ),
                                            onTap: () {
                                              context.appNavigatorPush(
                                                  ViewCaseClosed(document));
                                            },
                                            dense: true,
                                          )
                                        : Card(
                                  child: ListTile(
                                    leading: createAvatar(
                                        "${document.occurence?.obNo}"),
                                    title: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                          Row(
                                                   children: [
                                                     Text(
                                                      "Case Number: \t"),
                                                     Text(
                                                      "DCI/${document.id}/2024"),
                                                   ],
                                                 ),
                                        Text("${document.occurence?.obNo}"),
                                      ],
                                    ),
                                    subtitle: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Align(
                                            alignment:
                                                FractionalOffset.centerLeft,
                                            child: document.occurence!
                                                        .occurenceDetails ==
                                                    null
                                                ? Text('${document.occurence}')
                                                : document.occurence!
                                                        .occurenceDetails!.isEmpty
                                                    ? const Text('')
                                                    : Text(
                                                        "${(jsonDecode(document.occurence!.occurenceDetails!.first.details!) as List).map((e) => e['category']['name'])}")),
                                        Align(
                                            alignment:
                                                FractionalOffset.centerLeft,
                                            child: Text(
                                                "${document.occurence?.obNo}")),
                                      ],
                                    ),
                                    isThreeLine: true,
                                    trailing: document.status == "OPEN"
                                        ? const Chip(
                                            labelPadding: EdgeInsets.all(0.1),
                                            label: Icon(Icons.check_box, color: Colors.black,),
                                            backgroundColor: Colors.green,
                                          )
                                        : document.status == "SUSPENDED"
                                        ? const Chip(
                                            labelPadding: EdgeInsets.all(0.1),
                                            label: Icon(Icons.close, color: Colors.black,),
                                            backgroundColor: Colors.amber,
                                          )
                                        : const Chip(
                                            labelPadding: EdgeInsets.all(0.1),
                                            label: Icon(Icons.hourglass_full),
                                            backgroundColor: Colors.red,
                                          ),
                                    onTap: () {
                                      context.appNavigatorPush(
                                          ViewCaseClosed(document));
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => ViewCase(document)));
                                    },
                                    dense: true,
                                  ),
                                );
                        }).toList(),
                      ),
              ),
        ));
  }

  Widget createAvatar(String name) {
    String init = name[0].toUpperCase();
    return CircleAvatar(
      child: Text(init),
    );
  }
}
