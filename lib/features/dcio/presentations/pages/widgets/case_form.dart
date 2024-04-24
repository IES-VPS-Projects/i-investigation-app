import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:iinvestigation/core/utilities/app_navigation.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
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
    context.read<DcioCubit>().getUsers();

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

  String? leadInvestigator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
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

                  DropdownButtonFormField<String>(
                    value: leadInvestigator,
                    onChanged: (val) {
                      setState(() {
                        leadInvestigator = val;
                      });
                    },
                    decoration: const InputDecoration(
                        labelText: "Lead Investigator",
                        border: OutlineInputBorder()),
                    onSaved: (str) => leadInvestigator = str,
                    validator: (str) {
                      if (str == null || str.isEmpty) {
                        return "Case lead must be assigned";
                      }
                    },
                    items: context.watch<DcioCubit>().state.payload.officers ==
                            null
                        ? []
                        : context
                            .watch<DcioCubit>()
                            .state
                            .payload
                            .officers!
                            .map((officer) {
                            return DropdownMenuItem<String>(
                              value: officer.id.toString(),
                              child: Text("${officer.name}"),
                            );
                          }).toList(),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  //ADD LIST VIEW HERE TO LINK TO DIFFERENT SUB PAGES
                  Container(
                    height: 200.0,
                    child: ListView(
                      children: <Widget>[
                        Card(
                          child: ListTile(
                            title: const Text("Assigned Officers"),
                            subtitle:
                                const Text("Tap to view Assigned Officers"),
                            leading: Image.asset(
                              "assets/images/investigator.png",
                              height: 50.0,
                              width: 37.5,
                            ),
                            trailing: CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Text(
                                context
                                            .watch<DcioCubit>()
                                            .state
                                            .payload
                                            .officers ==
                                        null
                                    ? "0"
                                    : context
                                        .watch<DcioCubit>()
                                        .state
                                        .payload
                                        .officers!
                                        .length
                                        .toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onTap: () {
                              context.appNavigatorPush(OfficerPicker());
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             OfficerPicker(caseObject.asignees)));
                            },
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            var payload = {
                              "occurenceId": widget.caseObject.id,
                              "officers":context.read<DcioCubit>().state.payload.officers==null?[]: context.read<DcioCubit>().state.payload.officers!.map((e) => e.id).toList(),
                              "lead_officer":leadInvestigator
                            };

                            logger.d(payload);
                          },
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 105, 240, 132))),
                          child: const SizedBox(
                            width: double.infinity,
                            height: 50.0,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.save),
                                Text("Save"),
                              ],
                            ),
                          ),
                        )
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
