import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/utilities/utilities.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';
import 'package:image_picker/image_picker.dart';

import 'audio_recorder.dart';

class CaseNoteForm extends StatefulWidget {
  final int id;
  const CaseNoteForm({super.key, required this.id});
  @override
  // ignore: library_private_types_in_public_api
  _CaseNoteFormState createState() => _CaseNoteFormState();
}

class _CaseNoteFormState extends State<CaseNoteForm> {
  Map<String, dynamic> formData = {};
  // ZefyrController _controller;

  // NotusDocument document;

  final _formKey = GlobalKey<FormState>();

  // ProgressHUD _progressHUD;
  bool _loading = false;

  @override
  void initState() {
    // document = new NotusDocument();
    // _controller = new ZefyrController(document);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("Call on build method......................");
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          actions: <Widget>[
            TextButton(
              onPressed: onSaved,
              child: Row(
                children: <Widget>[Text("Save Note"), Icon(Icons.save)],
              ),
            )
          ],
        ),
        body: context.watch<InboxCubit>().state.maybeWhen(
            loading: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            orElse: () => Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                            decoration: InputDecoration(hintText: "Title"),
                            textInputAction: TextInputAction.done,
                            validator: (value) {
                              if (value == null) {
                                return 'Title is required';
                              }
                            },
                            onSaved: (str) => formData["title"] = str),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (_) => const Recording());
                                  },
                                  icon: Icon(Icons.mic)),
                              IconButton(
                                  onPressed: getImage,
                                  icon: const Icon(Icons.camera)),
                              IconButton(
                                  onPressed: getVideo,
                                  icon: const Icon(
                                      Icons.video_camera_front_rounded))
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            if (fileVideo.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Row(
                                      children: [
                                        Icon(Icons.video_camera_front_rounded),
                                        Text("Video")
                                      ],
                                    )),
                              ),
                            if (file.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Row(
                                      children: [
                                        Icon(Icons.camera),
                                        Text("Image")
                                      ],
                                    )),
                              ),
                            if (context
                                    .watch<InboxCubit>()
                                    .state
                                    .payload
                                    .recordingPath !=
                                null)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Row(
                                      children: [
                                        Icon(Icons.music_note),
                                        Text("Audio")
                                      ],
                                    )),
                              ),
                          ],
                        ),
                        TextFormField(
                            maxLines: 5,
                            decoration:
                                const InputDecoration(hintText: "Narative"),
                            textInputAction: TextInputAction.done,
                            validator: (value) {
                              if (value == null) {
                                return 'Title is required';
                              }
                            },
                            onSaved: (str) => formData["narrative"] = str),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                              onPressed: () {},
                              child: const Row(
                                children: [
                                  Icon(Icons.attach_file),
                                  Text("Attach A witness")
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                )));
  }

  void dismissProgressHUD() {}
  List<File> file = [];
  List<File> fileVideo = [];
  Future getImage() async {
    var image = await ImagePicker.platform
        .getImageFromSource(source: ImageSource.camera);
    if (file.isEmpty) {
      setState(() {
        file.add(File(image!.path));
      });
    }
  }

  Future getVideo() async {
    var image = await ImagePicker.platform.getVideo(source: ImageSource.camera);
    if (fileVideo.isEmpty) {
      setState(() {
        fileVideo.add(File(image!.path));
      });
    }
  }

  Future<void> onSaved() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print(formData);
      // await MultipartFile.fromFile(context.read<InboxCubit>().state.payload.recordingPath!.split('/').last;
      FormData fd = FormData.fromMap({
        'caseFileId': widget.id,
        'title': formData['title'],
        'narrative': formData['narrative'],
        'files': [
          await MultipartFile.fromFile(
              context.read<InboxCubit>().state.payload.recordingPath!,
              filename:
                  'audio-${context.read<InboxCubit>().state.payload.recordingPath!.split("/").last}'),
          file.isNotEmpty
              ? await MultipartFile.fromFile(file.first.path,
                  filename: 'images-${file.first.path.split("/").last}')
              : null,
          fileVideo.isNotEmpty
              ? await MultipartFile.fromFile(fileVideo.first.path,
                  filename: 'videos-' + fileVideo.first.path.split("/").last)
              : null,
        ],
      });

      context.read<InboxCubit>().createCaseNote(fd: fd).then((value) {
        context.read<InboxCubit>().getCaseFile(fd: (widget.id));
        context.back();
      });
    }
  }
}
