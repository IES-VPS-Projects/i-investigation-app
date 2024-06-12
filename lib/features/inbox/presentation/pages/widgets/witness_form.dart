import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:iinvestigation/core/data/models/entities/iprs_result_object.dart';
import 'package:iinvestigation/core/utilities/app_common_extentions.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
import 'package:iinvestigation/core/utilities/utilities.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';
import 'package:image_picker/image_picker.dart';

import 'IPRS_dialog.dart';

class WitnessForm extends StatefulWidget {
  final String id;

  WitnessForm({required this.id});

  @override
  _SuspectsFormState createState() => _SuspectsFormState();
}

class _SuspectsFormState extends State<WitnessForm> {
  final _formKey = GlobalKey<FormState>();
  final _formKeyIPRS = GlobalKey<FormState>();
  Map<String, dynamic> formData = {};
  Map<String, dynamic> formDataIPRS = {};
  List<File> file = [];
  TextEditingController name = TextEditingController();
  TextEditingController id_no = TextEditingController();
  TextEditingController alias = TextEditingController();
  TextEditingController phone = TextEditingController();

  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return ProgressHUD(
      child: Builder(builder: (contextLoad) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              title: const Text("Add Witness"),
              actions: <Widget>[
                TextButton(
                    onPressed: onSave,
                    // color: Colors.green,
                    child: const Row(
                      children: <Widget>[
                        Icon(Icons.save),
                        Text("Save"),
                      ],
                    ))
              ],
            ),
            body: context.watch<InboxCubit>().state.maybeWhen(
                  loading: (_) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  orElse: () => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Form(
                            key: _formKeyIPRS,
                            child: Row(
                              children: [
                                Expanded(
                                    child: TextFormField(
                                        decoration: const InputDecoration(
                                            labelText: "Id Number"),
                                        validator: (value) {
                                          if (value == null) {
                                            return 'Id is required';
                                          }
                                          return null;
                                        },
                                        onSaved: (str) =>
                                            formDataIPRS["id_no"] = str)),
                                Expanded(
                                    child: Center(
                                  child: TextButton(
                                    onPressed: () {
                                      if (_formKeyIPRS.currentState!
                                          .validate()) {
                                        _formKeyIPRS.currentState!.save();
                                        logger.i(formDataIPRS);
                                        context.read<InboxCubit>().getIPRS(
                                            idNo: formDataIPRS['id_no']);

                                        showDialog<IPRS>(
                                            context: context,
                                            builder: (_) {
                                              return IprsDialog(
                                                  formDataIPRS['id_no']);
                                            }).then((value) {
                                          print(value);

                                          name.text =
                                              "${value?.firstName} ${value?.middleName} ${value?.lastName}";
                                          id_no.text = "${value?.id}";
                                          setState(() {});
                                        }).catchError((onError) {
                                          print(onError);
                                        });
                                      }
                                      // _formKey.currentState.save();
                                    },
                                    child: const Text('search'),
                                  ),
                                ))
                              ],
                            ),
                          ),
                          Form(
                              key: _formKey,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: <Widget>[
                                      TextFormField(
                                          controller: name,
                                          decoration: const InputDecoration(
                                              labelText: "Name"),
                                          validator: (value) {
                                            if (value == null) {
                                              return 'Name is required';
                                            }
                                            return null;
                                          },
                                          onSaved: (str) =>
                                              formData["name"] = str),
                                      TextFormField(
                                          controller: alias,
                                          decoration: InputDecoration(
                                              labelText: "Alias"),
                                          validator: (value) {
                                            if (value == null) {
                                              return 'Alias is required';
                                            }
                                          },
                                          onSaved: (str) =>
                                              formData["alias"] = str),
                                      TextFormField(
                                          controller: id_no,
                                          decoration: InputDecoration(
                                              labelText: "ID Number"),
                                          keyboardType: TextInputType.number,
                                          validator: (value) {
                                            if (value == null) {
                                              return 'ID Number is required';
                                            }
                                          },
                                          onSaved: (str) =>
                                              formData["idNumber"] = str),
                                      TextFormField(
                                          controller: phone,
                                          decoration: InputDecoration(
                                              labelText: "Phone Number"),
                                          keyboardType: TextInputType.number,
                                          validator: (value) {
                                            if (value == null) {
                                              return 'Phone Number is required';
                                            }
                                            return null;
                                          },
                                          onSaved: (str) =>
                                              formData["phone"] = str),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Align(
                                          child: const Text("Captured images:"),
                                          alignment: FractionalOffset.topLeft,
                                        ),
                                      ),
                                      file.length == 0
                                          ? Text('No Images Selected')
                                          : CarouselSlider(
                                              options: CarouselOptions(
                                                  autoPlay: true),
                                              items: file.map((f) {
                                                return Builder(
                                                  builder:
                                                      (BuildContext context) {
                                                    return Image.file(
                                                      f,
                                                      height: 200.0,
                                                      fit: BoxFit.contain,
                                                    );
                                                  },
                                                );
                                              }).toList(),
                                            ),
                                      TextButton(
                                        onPressed: getImage,
                                        // color: Colors.grey,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Icon(Icons.add_photo_alternate),
                                            Text("Add Image"),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ));
      }),
    );
  }

  Future getImage() async {
    var image = await ImagePicker.platform
        .getImageFromSource(source: ImageSource.gallery);
    if (file.isEmpty) {
      setState(() {
        file.add(File(image!.path));
      });
    }
  }

  void dismissProgressHUD() {
    // setState(() {
    //   if (_loading) {
    //     _progressHUD.state.dismiss();
    //   } else {
    //     _progressHUD.state.show();
    //   }

    //   _loading = !_loading;
    // });
  }

  Future uploadFiles() async {
    // final StorageReference mainRef =
    //     FirebaseStorage.instance.ref().child("suspects");
    // List filesPath = List();

    // for (File f in file) {
    //   final String fileName = Uuid().v4() + "${p.extension(f.path)}";
    //   StorageReference fileRef = mainRef.child(fileName);
    //   final StorageUploadTask uploadTask = fileRef.putFile(f);

    //   StorageTaskSnapshot sn = await uploadTask.onComplete;

    //   filesPath.add(await fileRef.getDownloadURL());
    // }

    // formData["images"] = filesPath;
  }

  Future<void> onSave() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      String fileName = file.first.path.split('/').last;
      print(widget.id);
      formData['id'] = context.read<InboxCubit>().state.payload.iprsModel?.id;
      print(formData);
      FormData fd = FormData.fromMap({
        'caseFileId': widget.id,
        'iprs': context.read<InboxCubit>().state.payload.iprsModel?.id,
        'files':
            await MultipartFile.fromFile(file.first.path, filename: fileName)
      });
      context.read<InboxCubit>().createWitness(fd: fd).then((value) {
        context.read<InboxCubit>().getCaseFile(fd: int.parse(widget.id));
        context.showCustomSnackBar("Created Witness");
        context.back();
      });
    }
    dismissProgressHUD();
  }
}
