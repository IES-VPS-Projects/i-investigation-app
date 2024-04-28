import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/data/network_datasource/config.dart';
import 'package:iinvestigation/core/utilities/utilities.dart';
import 'package:iinvestigation/features/inbox/presentation/pages/widgets/case_materials_form.dart';
import 'package:iinvestigation/features/inbox/presentation/pages/widgets/case_note_form.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';

import 'widgets/audio/player.dart';
import 'widgets/video_player.dart';

class CaseMaterial extends StatelessWidget {
  final int id;
  const CaseMaterial({required this.id});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("Case Materials"),
          elevation: 0.0,
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  context.appNavigatorPush(CaseMaterialForm(id: id));
                },
                child: const Row(
                  children: <Widget>[
                    Icon(Icons.playlist_add),
                    Text(" Add"),
                  ],
                ))
          ],
        ),
        body: ListView(
            children: context.watch<InboxCubit>().state.payload.caseFile == null
                ? []
                : context
                    .watch<InboxCubit>()
                    .state
                    .payload
                    .caseFile!
                    .data!
                    .caseMaterial!
                    .map((e) => ListTile(
                          dense: true,
                          title: Text("${e.title}"),
                          subtitle: Column(
                            children: [
                              Divider(),
                              Text("${e.narrative}"),
                              Row(
                                children: [
                                  if (e.video is String)
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextButton(
                                          onPressed: () {
                                            showModalBottomSheet(
                                              context: context,
                                              builder: (_) => Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                height: 200,
                                                child: Center(
                                                  child: VideoPlayerScreen(
                                                    link:
                                                        "${BASE_URLASSETS}${e.video}",
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          child: const Row(
                                            children: [
                                              Icon(Icons
                                                  .video_camera_front_rounded),
                                              Text("Video")
                                            ],
                                          )),
                                    ),
                                  if (e.audio is String)
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextButton(
                                          onPressed: () {
                                            showModalBottomSheet(
                                              context: context,
                                              builder: (_) => Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                height: 200,
                                                child: Center(
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 25),
                                                    child: AudioPlayer(
                                                      source:
                                                          "${BASE_URLASSETS}${e.audio}",
                                                      onDelete: () {},
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          child: const Row(
                                            children: [
                                              Icon(Icons.music_note),
                                              Text("Audio")
                                            ],
                                          )),
                                    ),
                                  if (e.audio is String)
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) =>
                                                        SizedBox(
                                                          height: 200,
                                                          child: Image.network(
                                                              "${BASE_URLASSETS}${e.picture}"),
                                                        ));
                                          },
                                          child: const Row(
                                            children: [
                                              Icon(Icons.camera),
                                              Text("Image")
                                            ],
                                          )),
                                    ),
                                ],
                              )
                            ],
                          ),
                        ))
                    .toList())

        //  ListView(
        //           children:
        //               snapshot.data.documents.map((DocumentSnapshot document) {
        //             return  ListTile(
        //               leading: Icon(Icons.camera_enhance),
        //               title:  Text(document['title']),
        //               subtitle:  Text((document['timestamp'] as Timestamp)
        //                   .toDate()
        //                   .toIso8601String()),
        //               onTap: () {
        //                 // Navigator.push(
        //                 //     context,
        //                 //     MaterialPageRoute(
        //                 //         builder: (context) =>
        //                 //             ViewCaseNote(documentSnapshot: document)));
        //               },
        //               dense: true,
        //             );
        //           }).toList(),
        //         )
        );
  }
}
