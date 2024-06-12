import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:iinvestigation/core/platform/app_cards.dart';
import 'package:iinvestigation/core/platform/common_text.dart';
import 'package:iinvestigation/core/utilities/app_common_extentions.dart';
import 'package:iinvestigation/core/utilities/app_navigation.dart';
import 'package:iinvestigation/core/utilities/line.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
import 'package:iinvestigation/features/dashboard/presentation/pages/dashboard.dart';
import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';
import 'package:iinvestigation/features/dcio/presentations/pages/view_case.dart';
import 'package:iinvestigation/features/dcio/presentations/pages/widgets/officers.dart';
import 'package:iinvestigation/features/dcio/presentations/state/dcio_cubit.dart';
import 'package:intl/intl.dart';

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
  }

  String? leadInvestigator;
  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: Builder(builder: (context) {
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
                        initialValue: (jsonDecode(caseObject!
                                .occurenceDetails!.first.details!) as List)
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
                        items:
                            context.watch<DcioCubit>().state.payload.officers ==
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
                                  context
                                      .appNavigatorPush(const OfficerPicker());
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
                                  "officers": context
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
                                          .toList(),
                                  "lead_officer": int.parse("$leadInvestigator")
                                };

                                logger.d(payload);
                                final progress = ProgressHUD.of(context);
                                progress?.showWithText("loading");
                                context
                                    .read<DcioCubit>()
                                    .createCaseFile(occurenceId: payload)
                                    .then((value) {
                                  progress?.dismiss();
                                  context.showCustomSnackBar(
                                      "Created Successfully",
                                      isError: false);
                                  context.appNavigatorPush(const Dashboard());
                                });
                              },
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
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
                   
                   
                       if (widget.caseObject.occurenceDetails == null) const Text("No Details"),
            if (widget.caseObject.occurenceDetails != null)
              for (var i in widget.caseObject.occurenceDetails!)
                for (var j in jsonDecode(i.details!) as List)
                  Column(
                    children: [
                      AppCards(
                        bordered: true,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              HorizontalOrLine(
                                  indentMultiply: 20,
                                  child: CommonText(
                                    title:
                                        'Occurence  Category ${j['category']['name']}',
                                    color: Colors.black,
                                  )),
                              ...(j['occurrence'] as Map).keys.map((key) => Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: key == 'ocs_action' ||
                                            key == 'is_closed' ||
                                            key == 'posted_date' ||
                                            key == 'module' ||
                                            key == 'id' ||
                                            key == 'is_complete' ||
                                            key == 'report_timestamp' || key == 'narrative'
                                        ? []
                                        : [
                                            if (j['occurrence'][key] != null)
                                              Text(
                                               ' ${"${key}".toUpperCase()}: \t\t',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall
                                                    ?.copyWith(
                                                        color: Colors.black),
                                              ),
                                            if (j['occurrence'][key] != null)
                                              if (!(j['occurrence'][key]
                                                  is Map))
                                                Text(' ${j['occurrence'][key]}',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleSmall
                                                        ?.copyWith(
                                                            color:
                                                                Colors.black)),
                                            if (j['occurrence'][key] is Map)
                                              key == 'police_station'
                                                  ? Text(
                                                      ' ${j['occurrence'][key]['name']}',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall
                                                          ?.copyWith(
                                                              color:
                                                                  Colors.black))
                                                  : Text(
                                                      ' ${j['occurrence'][key]['service_number']}',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall
                                                          ?.copyWith(
                                                              color: Colors
                                                                  .black)),
                                          ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                      AppCards(
                          bordered: true,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                const HorizontalOrLine(
                                    indentMultiply: 20,
                                    child: CommonText(
                                      title: 'Details',
                                      color: Colors.black,
                                    )),
                                ...(j['details'] as Map).keys.map((key) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: key
                                                .toString()
                                                .toLowerCase()
                                                .contains('date and time')
                                            ?
                                             [
                                                if (j['details'][key] != null)
                                                  Text(' ${"${key}".toUpperCase()}: \t\t'  ,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall
                                                          ?.copyWith(
                                                              color:
                                                                  Colors.black)),
                                                if (j['details'][key] != null)
                                                  Text(
                                                    ' ${  ((j['details'][key].toString().length > 10) ? DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.parse(j['details'][key])) : j['details'][key])}',
                                                       style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall
                                                          ?.copyWith(
                                                              color:
                                                                  Colors.black)),
                                              ]
                                            : [
                                                if (j['details'][key] != null)
                                                  Text(' ${"${key}".toUpperCase()}: \t\t',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall
                                                          ?.copyWith(
                                                              color:
                                                                  Colors.black)),
                                                if (j['details'][key] != null)
                                                  Flexible(
                                                    child: Text(' ${j['details'][key]}',
                                                    overflow: TextOverflow.clip  ,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleSmall
                                                            ?.copyWith(
                                                              
                                                                color:
                                                                    Colors.black)),
                                                  ),
                                              ],
                                      ),
                                )),
                              ],
                            ),
                          ))
                    ],
                  )
        
                   
                   ],
                  )),
            ],
          ),
        );
      }),
    );
  }
}
