import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/utilities/app_navigation.dart';
import 'package:iinvestigation/features/inbox/presentation/pages/view_case.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<InboxCubit>().getAllCases();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Ongoing Cases"),
          centerTitle: true,
        ),
        body: context.watch<InboxCubit>().state.maybeMap(
              orElse: () {
                return Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          context.read<InboxCubit>().getAllCases();
                        },
                        child: Text(
                            '${context.watch<InboxCubit>().state.payload.cases}'))
                  ],
                );
              },
              cases: (value) => value.payload.cases == null
                  ? SizedBox()
                  : ListView(
                      children: value.payload.cases!.map((document) {
                        return Card(
                          child: ListTile(
                            leading:
                                createAvatar("${document.occurence!.obNo}"),
                            title: Text("${document.occurence?.obNo}"),
                            subtitle: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Align(
                                    alignment: FractionalOffset.centerLeft,
                                    child: document
                                                .occurence!.occurenceDetails ==
                                            null
                                        ? Text('${document.occurence}')
                                        : document.occurence!.occurenceDetails!
                                                .isEmpty
                                            ? const Text('')
                                            : Text(
                                                "${(jsonDecode(document.occurence!.occurenceDetails!.first.details!) as List).map((e) => e['category']['name'])}")),
                                Align(
                                    alignment: FractionalOffset.centerLeft,
                                    child:  Text(
                                        "${document.occurence?.obNo}")),
                              ],
                            ),
                            isThreeLine: true,
                            trailing: document.status == "OPEN"
                                ? const Chip(
                                    labelPadding: EdgeInsets.all(0.1),
                                    label: Icon(Icons.check_box),
                                    backgroundColor: Colors.green,
                                  )
                                : const  Chip(
                                    labelPadding: EdgeInsets.all(0.1),
                                    label: Icon(Icons.hourglass_full),
                                    backgroundColor: Colors.red,
                                  ),
                            onTap: () {
                              context.appNavigatorPush(ViewCase(document));
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
            ));
  }

  Widget createAvatar(String name) {
    String init = name[0].toUpperCase();
    return CircleAvatar(
      child: Text(init),
    );
  }
}
