import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:iinvestigation/core/utilities/app_navigation.dart';
import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';
import 'package:iinvestigation/features/dcio/presentations/pages/widgets/officers.dart';
import 'package:iinvestigation/features/dcio/presentations/state/dcio_cubit.dart';

class CaseForm extends StatefulWidget {
  final Occurence caseObject;
  const CaseForm({super.key, required this.caseObject});
  @override
  // ignore: library_private_types_in_public_api
  _CaseFormState createState() => _CaseFormState();
}

class _CaseFormState extends State<CaseForm> {
  Occurence? caseObject;

  final _formKey = GlobalKey<FormState>();

  bool _loading = false;
  String _heading = '';

  @override
  void initState() {
    super.initState();
    caseObject = widget.caseObject;
    (jsonDecode(caseObject!.occurenceDetails!.first.details!) as List).map((e) {
      print(e);
      setState(() {
        // ignore: prefer_interpolation_to_compose_strings
        _heading = "$_heading " + e['category']['name'];
      });
    });
    // Create an empty document or load existing if you have one.
    // Here we create an empty document:
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("dat$_heading"),
          ),
          Form(
              key: _formKey,
              child: ListView(
                children: <Widget>[
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    initialValue: (jsonDecode(
                                caseObject!.occurenceDetails!.first.details!)
                            as List)
                        .map((e) => e['category']['name'])
                        .toString(),
                    decoration: const InputDecoration(
                        labelText: "Heading", border: OutlineInputBorder()),
                    validator: (value) {
                      // if (value.isEmpty) {
                      //   return 'Heading is required';
                      // }
                    },
                    onSaved: (str) => caseObject!.obNo != str,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    initialValue: caseObject!.obNo,
                    decoration: InputDecoration(
                        labelText: "OB Number",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                            icon: Icon(Icons.search), onPressed: () {})),
                    validator: (value) {},
                    onSaved: (str) {},
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  //ADD LIST VIEW HERE TO LINK TO DIFFERENT SUB PAGES
                  Container(
                    height: 200.0,
                    child: ListView(
                      children: <Widget>[
                        Card(
                          child: ListTile(
                            title: Text("Assigned Officers"),
                            subtitle: Text("Tap to view Assigned Officers"),
                            leading: Image.asset(
                              "assets/images/investigator.png",
                              height: 50.0,
                              width: 37.5,
                            ),
                            trailing: CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Text(
                                caseObject!.caseFile!.length.toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onTap: () {
                              context.appNavigatorPush(OfficerPicker(context.watch<DcioCubit>().state.payload.users??[]));
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             OfficerPicker(caseObject.asignees)));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
