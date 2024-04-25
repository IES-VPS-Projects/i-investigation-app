import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';
import 'package:image_picker/image_picker.dart';

class SuspectsForm extends StatefulWidget {
  final String id;

  SuspectsForm({required this.id});

  @override
  _SuspectsFormState createState() => _SuspectsFormState();
}

class _SuspectsFormState extends State<SuspectsForm> {
  final _formKey = GlobalKey<FormState>();
  final _formKeyIPRS = GlobalKey<FormState>();
  Map<String, dynamic> formData = {};
  Map<String, dynamic> formDataIPRS = {};
  List<File> file = [];

  bool _loading = false;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("Add suspect"),
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
      body: Padding(
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
                            decoration:
                                const InputDecoration(labelText: "Id Number"),
                            validator: (value) {
                              if (value == null) {
                                return 'Id is required';
                              }
                              return null;
                            },
                            onSaved: (str) => formDataIPRS["id_no"] = str)),
                    Expanded(
                        child: Center(
                      child: TextButton(
                        onPressed: () {
                          if (_formKeyIPRS.currentState!.validate()) {
                            _formKeyIPRS.currentState!.save();
                            logger.i(formDataIPRS);
                            context
                                .read<InboxCubit>()
                                .getIPRS(idNo: formDataIPRS['id_no']);
                          }
                          // _formKey.currentState.save();
                        },
                        child: Text('search'),
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
                              decoration: InputDecoration(labelText: "Name"),
                              validator: (value) {
                                if (value == null) {
                                  return 'Name is required';
                                }
                                return null;
                              },
                              onSaved: (str) => formDataIPRS["name"] = str),
                          TextFormField(
                              decoration: InputDecoration(labelText: "Alias"),
                              validator: (value) {},
                              onSaved: (str) => formData["alias"] = str),
                          TextFormField(
                              decoration:
                                  InputDecoration(labelText: "ID Number"),
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null) {
                                  return 'ID Number is required';
                                }
                              },
                              onSaved: (str) => formData["idNumber"] = str),
                          TextFormField(
                              decoration:
                                  InputDecoration(labelText: "Phone Number"),
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null) {
                                  return 'Phone Number is required';
                                }
                              },
                              onSaved: (str) => formData["phone"] = str),
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
                                  options: CarouselOptions(autoPlay: true),
                                  items: file.map((f) {
                                    return Builder(
                                      builder: (BuildContext context) {
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
    );
  }

  Future getImage() async {
    var image = await ImagePicker.platform
        .getImageFromSource(source: ImageSource.camera);
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

  void onSave() {
    // if (_formKey.currentState?.validate()) {
    // _formKey.currentState.save();
    dismissProgressHUD();

    //upload all images..
    // uploadFiles().then((d) {
    //   Firestore.instance
    //       .collection("cases")
    //       .document(widget.id)
    //       .collection("suspects")
    //       .add(formData)
    //       .then((value) {
    //     dismissProgressHUD();
    //     Navigator.pop(context);
    //   });
    // });
    // }
  }
}
