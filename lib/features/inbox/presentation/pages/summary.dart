import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/data/network_datasource/config.dart';
import 'package:iinvestigation/core/utilities/utilities.dart';
import 'package:iinvestigation/features/dashboard/presentation/pages/dashboard.dart';
import 'package:iinvestigation/features/inbox/data/models/case_file/case_note.dart';
import 'package:iinvestigation/features/inbox/data/models/case_file/case_notes_suspect.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';

import '../../data/models/case_file/case_material.dart';
import '../../data/models/case_file/case_notes_witness.dart';
import 'widgets/audio/player.dart';
import 'widgets/video_player.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryState();
}

class _SummaryState extends State<SummaryPage> {
  TextEditingController caseDateController = TextEditingController();
  TextEditingController summary = TextEditingController();

  int currentStep = 0;
  // SummaryObject summaryObject = SummaryObject();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Investigation Summary"),
        ),
        body: context.watch<InboxCubit>().state.maybeWhen(
              loading: (_) => Center(
                child: CircularProgressIndicator(),
              ),
              orElse: () => Stepper(
                  currentStep: currentStep,
                  onStepTapped: (steps) {
                    setState(() {
                      currentStep = steps;
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      if (currentStep < _steps().length - 1) {
                        currentStep++;
                      } else {
                        print(notesData);

                        FormData payload = FormData.fromMap({
                          'summary': summary.text,
                          'caseFile': context
                              .read<InboxCubit>()
                              .state
                              .payload
                              .caseFile!
                              .data!
                              .id!,
                          "witness":
                              whereToAppendData.map((e) => e.id).toList(),
                          'suspects': whereSuspectToAppendData
                              .map((e) => e.id)
                              .toList(),
                          'caseNotes': notesData.map((e) => e.id).toList(),
                          'materials': materials.map((e) => e.id).toList()
                        });
                        context
                            .read<InboxCubit>()
                            .createSummary(payload: payload)
                            .then((value) {
                          context.read<InboxCubit>().getAllCases();
                          context.appNavigatorReplacement(const Dashboard());
                          context.showCustomSnackBar("Case Closed");
                        });
                      }
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      if (currentStep > 0) currentStep--;
                    });
                  },
                  steps: _steps()),
            ));
  }

  List<Step> _steps() {
    return <Step>[
      Step(
          isActive: currentStep >= 0,
          title: const Text("Summarize Investigation"),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  maxLines: 10,
                  controller: summary,
                  decoration: InputDecoration(
                      labelText: "Investigation Summary",
                      border: OutlineInputBorder()),
                ),
              ],
            ),
          )),
      Step(
          isActive: currentStep >= 1,
          title: Text("Select Witnesses"),
          content: _witnessSelected(
              "witnesses",
              context
                  .read<InboxCubit>()
                  .state
                  .payload
                  .caseFile!
                  .data!
                  .caseNotesWitness!,
              whereToAppendData,
              context)),
      Step(
          isActive: currentStep >= 2,
          title: Text("Select Suspects"),
          content: _suspectsSelected(
              "suspects",
              context
                  .read<InboxCubit>()
                  .state
                  .payload
                  .caseFile!
                  .data!
                  .caseNotesSuspect!,
              whereSuspectToAppendData,
              context)),
      Step(
          isActive: currentStep >= 3,
          title: Text("Select Case Notes"),
          content: _notesSelected(
              "notes",
              context
                  .read<InboxCubit>()
                  .state
                  .payload
                  .caseFile!
                  .data!
                  .caseNotes!,
              notesData,
              context)),
      Step(
          isActive: currentStep >= 4,
          title: Text("Select Case Materials"),
          content: _materialsSelected(
              "materials",
              context
                  .read<InboxCubit>()
                  .state
                  .payload
                  .caseFile!
                  .data!
                  .caseMaterial!,
              materials,
              context)),
      Step(
          isActive: currentStep >= 5,
          title: Text("Finish"),
          content:
              Center(child: Text("Press continue to generate summary..."))),
    ];
  }

  List<CaseNotesWitness> whereToAppendData = [];
  List<CaseNotesSuspect> whereSuspectToAppendData = [];
  List<CaseNote> notesData = [];
  List<CaseMaterial> materials = [];

  Widget _witnessSelected(String docType, List<CaseNotesWitness> whereToAppend,
      List<CaseNotesWitness> whereToAppendData, BuildContext context) {
    return Column(
      children: whereToAppend.map((document) {
        return CheckboxListTile(
          onChanged: (v) {
            print(v);
            if (v == true) {
              whereToAppendData.add(document);
              setState(() {});
            } else if (v == false) {
              whereToAppendData.removeAt(whereToAppendData.indexOf(document));
              setState(() {});
            }
          },
          value: whereToAppendData.contains(document),
          title: Text("${document.iprs?.firstName} "),
          dense: true,
        );
      }).toList(),
    );
  }

  Widget _suspectsSelected(String docType, List<CaseNotesSuspect> whereToAppend,
      List<CaseNotesSuspect> whereToAppendData, BuildContext context) {
    return Column(
      children: whereToAppend.map((document) {
        return CheckboxListTile(
          onChanged: (v) {
            print(v);
            if (v == true) {
              whereSuspectToAppendData.add(document);
              setState(() {});
            } else if (v == false) {
              whereSuspectToAppendData
                  .removeAt(whereToAppendData.indexOf(document));
              setState(() {});
            }
          },
          value: whereToAppendData.contains(document),
          title:
              Text("${document.iprs?.firstName} ${document.iprs?.lastName} "),
          dense: true,
        );
      }).toList(),
    );
  }

  Widget _notesSelected(String docType, List<CaseNote> whereToAppend,
      List<CaseNote> whereToAppendData, BuildContext context) {
    return Column(
      children: whereToAppend.map((document) {
        return Column(
          children: [
            CheckboxListTile(
              onChanged: (v) {
                print(v);
                if (v == true) {
                  notesData.add(document);
                  setState(() {});
                } else if (v == false) {
                  notesData.removeAt(whereToAppendData.indexOf(document));
                  setState(() {});
                }
              },
              value: whereToAppendData.contains(document),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${document.title}  "),
                ],
              ),
              dense: true,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (document.video is String)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (_) => Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 200,
                              child: Center(
                                child: VideoPlayerScreen(
                                  link: "${BASE_URLASSETS}${document.video}",
                                ),
                              ),
                            ),
                          );
                        },
                        child: Icon(Icons.video_camera_front_rounded),
                      ),
                    ),
                  if (document.audio is String)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (_) => Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 200,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: AudioPlayer(
                                    source:
                                        "${BASE_URLASSETS}${document.audio}",
                                    onDelete: () {},
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Icon(Icons.music_note),
                      ),
                    ),
                  if (document.audio is String)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => SizedBox(
                                    height: 200,
                                    child: Image.network(
                                        "${BASE_URLASSETS}${document.picture}"),
                                  ));
                        },
                        child: const Icon(Icons.camera),
                      ),
                    ),
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }

  Widget _materialsSelected(String docType, List<CaseMaterial> whereToAppend,
      List<CaseMaterial> whereToAppendData, BuildContext context) {
    return Column(
      children: whereToAppend.map((document) {
        return Column(
          children: [
            CheckboxListTile(
              onChanged: (v) {
                print(v);
                if (v == true) {
                  materials.add(document);
                  setState(() {});
                } else if (v == false) {
                  materials.removeAt(whereToAppendData.indexOf(document));
                  setState(() {});
                }
              },
              value: whereToAppendData.contains(document),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${document.title}  "),
                ],
              ),
              dense: true,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (document.video is String)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (_) => Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 200,
                              child: Center(
                                child: VideoPlayerScreen(
                                  link: "${BASE_URLASSETS}${document.video}",
                                ),
                              ),
                            ),
                          );
                        },
                        child: Icon(Icons.video_camera_front_rounded),
                      ),
                    ),
                  if (document.audio is String)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (_) => Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 200,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: AudioPlayer(
                                    source:
                                        "${BASE_URLASSETS}${document.audio}",
                                    onDelete: () {},
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Icon(Icons.music_note),
                      ),
                    ),
                  if (document.audio is String)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => SizedBox(
                                    height: 200,
                                    child: Image.network(
                                        "${BASE_URLASSETS}${document.picture}"),
                                  ));
                        },
                        child: const Icon(Icons.camera),
                      ),
                    ),
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
