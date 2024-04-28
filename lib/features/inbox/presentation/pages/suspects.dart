import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/data/network_datasource/config.dart';
import 'package:iinvestigation/core/utilities/utilities.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:iinvestigation/features/inbox/presentation/pages/widgets/suspect_form.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';

class Suspects extends StatefulWidget {
  final OpenCases caseFile;
  Suspects({super.key, required this.caseFile});

  @override
  State<Suspects> createState() => _SuspectsState();
}

class _SuspectsState extends State<Suspects> {
  @override
  void initState() {
    super.initState();
    context.read<InboxCubit>().getCaseFile(fd: widget.caseFile.id!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Case Suspects"),
          elevation: 0.0,
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  context.appNavigatorPush(
                      SuspectsForm(id: widget.caseFile.id!.toString()));
                },
                // color: Colors.green,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.group_add),
                    Text(" Add"),
                  ],
                ))
          ],
        ),
        body: context.watch<InboxCubit>().state.maybeWhen(
              orElse: () {
                return const SizedBox();
              },
              loading: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              caseFile: (payload) => ListView(
                children: [
                  ...payload.caseFile!.data!.caseNotesSuspect!.map((e) =>
                      ListTile(
                        visualDensity: VisualDensity.comfortable,
                        leading: Image.network("$BASE_URLASSETS${e.picture}"),
                        title: Text("${e.iprs?.firstName} ${e.iprs?.lastName}"),
                        subtitle: Text("${e.iprs?.idNo}  "),
                      ))
                ],
              ),
            )

        // StreamBuilder<QuerySnapshot>(
        //   stream: Firestore.instance
        //       .collection("cases")
        //       .document(id)
        //       .collection("suspects")
        //       .snapshots(), // a Stream<int> or null
        //   builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        //     if (snapshot.hasError) return Text('Error: ${snapshot.error}');
        //     switch (snapshot.connectionState) {
        //       case ConnectionState.waiting:
        //         return Center(
        //             child: Row(
        //           children: <Widget>[
        //             CircularProgressIndicator(),
        //             Text('Loading...'),
        //           ],
        //         ));
        //       default:
        //         return new ListView(
        //           children:
        //               snapshot.data.documents.map((DocumentSnapshot document) {
        //             return new ListTile(
        //               leading: Icon(Icons.camera_enhance),
        //               title: new Text(document['name']),
        //               subtitle: new Text(document['idNumber']),
        //               onTap: () {
        //                 Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                         builder: (context) => ViewSuspectForm(documentSnapshot: document)));
        //               },
        //               dense: true,
        //             );
        //           }).toList(),
        //         );
        //     }
        //     return null; // unreachable
        //   },
        // ),

        );
  }
}
