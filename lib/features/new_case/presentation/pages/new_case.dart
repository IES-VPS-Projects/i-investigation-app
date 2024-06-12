import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/utilities/utilities.dart';
import 'package:iinvestigation/features/dashboard/presentation/pages/dashboard.dart';
import 'package:iinvestigation/features/dcio/presentations/pages/widgets/officers.dart';
import 'package:iinvestigation/features/dcio/presentations/state/dcio_cubit.dart';
import 'package:iinvestigation/features/new_case/presentation/state/new_case_cubit.dart';

class NewCase extends StatefulWidget {
  const NewCase({super.key});

  @override
  State<NewCase> createState() => _NewCaseState();
}

class _NewCaseState extends State<NewCase> {
  final _formKey = GlobalKey<FormState>();
  String? leadInvestigator;
  TextEditingController title = TextEditingController();
  TextEditingController obNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Case"),
        centerTitle: true,
      ),
      body: context.watch<NewCaseCubit>().state.maybeWhen(
            loading: (payload) => const Center(
              child: CircularProgressIndicator(),
            ),
            orElse: () => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Form(
                      key: _formKey,
                      child: ListView(
                        children: <Widget>[
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: "Heading",
                                border: OutlineInputBorder()),
                            validator: (value) {
                              if (value == null) {
                                return 'Heading is required';
                              }
                              return null;
                            },
                            controller: title,
                            // onSaved: (str) => caseObject.heading = str,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            controller: obNumber,

                            decoration: InputDecoration(
                                labelText: "Case Number",
                                border: const OutlineInputBorder(),
                                suffixIcon: IconButton(
                                    icon: const Icon(Icons.search),
                                    onPressed: () {})),
                            validator: (value) {
                              if (value == null) {
                                return 'Case Number is required';
                              }
                              return null;
                            },
                            // onSaved: (str) => caseObject.obNumber = str,
                          ),
                          const SizedBox(
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
                            items: context
                                        .watch<DcioCubit>()
                                        .state
                                        .payload
                                        .officers ==
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
                                    subtitle:
                                        Text("Tap to view Assigned Officers"),
                                    leading: Image.asset(
                                      "assets/images/investigator.png",
                                      height: 50.0,
                                      width: 37.5,
                                    ),
                                    trailing: CircleAvatar(
                                      backgroundColor: Colors.red,
                                      child: Text(
                                        "${context.read<DcioCubit>().state.payload.officers == null ? 0 : context.read<DcioCubit>().state.payload.officers!.length}",
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
                              ],
                            ),
                          ),

                          TextButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                var payload = FormData.fromMap({
                                  'title': title.text,
                                  'ob_number': obNumber.text,
                                  'lead_investigator': leadInvestigator,
                                  'officers_officers': context
                                              .read<DcioCubit>()
                                              .state
                                              .payload
                                              .officers ==
                                          null
                                      ? []
                                      : context
                                          .read<DcioCubit>()
                                          .state
                                          .payload
                                          .officers!
                                          .map((e) => e.id)
                                          .toList()
                                });
                                print(payload);
                                context
                                    .read<NewCaseCubit>()
                                    .newCase(fd: payload)
                                    .then((value) {
                                  context.showCustomSnackBar("Created A case");
                                  context.appNavigatorReplacement(
                                      const Dashboard());
                                });
                              }
                            },
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
                      )),
                ],
              ),
            ),
          ),
    );
  }
}
