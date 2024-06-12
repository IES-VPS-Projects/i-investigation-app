import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:iinvestigation/core/platform/app_cards.dart';
import 'package:iinvestigation/core/platform/common_text.dart'; 
import 'package:iinvestigation/core/utilities/line.dart';
import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';

class ViewCaseDetails extends StatefulWidget {
  final Occurence e;
  const ViewCaseDetails({super.key, required this.e});

  @override
  State<ViewCaseDetails> createState() => _ViewCaseDetailsState();
}

class _ViewCaseDetailsState extends State<ViewCaseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Case Details"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            if (widget.e.occurenceDetails == null) const Text("No Details"),
            if (widget.e.occurenceDetails != null)
              for (var i in widget.e.occurenceDetails!)
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
                                            key == 'report_timestamp'
                                        ? []
                                        : [
                                            if (j['occurrence'][key] != null)
                                              Text(
                                                ' $key \t\t',
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
                                ...(j['details'] as Map).keys.map((key) => Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: key
                                              .toString()
                                              .toLowerCase()
                                              .contains('date and time')
                                          ?
                                           [
                                              if (j['details'][key] != null)
                                                Text(' ${key} \t\t'  ,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleSmall
                                                        ?.copyWith(
                                                            color:
                                                                Colors.black)),
                                              if (j['details'][key] != null)
                                                Text(
                                                    ' ${(j['details'][key])}',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleSmall
                                                        ?.copyWith(
                                                            color:
                                                                Colors.black)),
                                            ]
                                          : [
                                              if (j['details'][key] != null)
                                                Text(' ${key} \t\t',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleSmall
                                                        ?.copyWith(
                                                            color:
                                                                Colors.black)),
                                              if (j['details'][key] != null)
                                                Text(' ${j['details'][key]}',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleSmall
                                                        ?.copyWith(
                                                            color:
                                                                Colors.black)),
                                            ],
                                    )),
                              ],
                            ),
                          ))
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
