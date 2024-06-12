import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/utilities/app_navigation.dart';
import 'package:iinvestigation/features/dcio/presentations/state/dcio_cubit.dart';

import '../new_case.dart';

class Incoming extends StatefulWidget {
  const Incoming({super.key});

  @override
  State<Incoming> createState() => _IncomingState();
}

class _IncomingState extends State<Incoming> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    context.read<DcioCubit>().getOccurences();
  }

  @override
  Widget build(BuildContext context) {
    return context.watch<DcioCubit>().state.maybeWhen(
        orElse: () => context.read<DcioCubit>().state.payload.occurences == null
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  children: [
                    ...context
                        .read<DcioCubit>()
                        .state
                        .payload
                        .occurences!
                        .where((element) => element.caseFile!.length == 0)
                        .map((e) => Card(
                              child: ListTile(
                                title: Text("${e.obNo}"),
                                subtitle: e.occurenceDetails!.isEmpty
                                    ? const Text('')
                                    : Text(
                                        "${(jsonDecode(e.occurenceDetails!.first.details!)[0]['category']['name'])}"),
                                trailing: IconButton(
                                    icon: const Icon(Icons.open_in_browser),
                                    onPressed: () {
                                      context.appNavigatorPush(NewCase(e: e));
                                    }),
                              ),
                            ))
                  ],
                ),
              ),
        occurences: (payload) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ...payload.occurences!
                    .where((element) => element.caseFile!.length == 0)
                    .map((e) => Card(
                          child: ListTile(
                            title: Text("${e.obNo}"),
                            subtitle: e.occurenceDetails!.isEmpty
                                ? const Text('')
                                : (jsonDecode(e.occurenceDetails!.first
                                            .details!) as List)
                                        .isEmpty
                                    ? Text('')
                                    : Text(
                                        "${(jsonDecode(e.occurenceDetails!.first.details!)[0]['category']['name'])}"),
                            trailing: IconButton(
                                icon: const Icon(Icons.open_in_browser),
                                onPressed: () {
                                  context.appNavigatorPush(NewCase(e: e));
                                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NewCase(
                                  //   caseObj: caseObject,
                                  // )));
                                }),
                          ),
                        ))
              ],
            ),
          );
        });
  }
}
