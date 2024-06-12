import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:iinvestigation/core/platform/app_cards.dart';
import 'package:iinvestigation/core/platform/common_text.dart';
import 'package:iinvestigation/core/utilities/line.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:intl/intl.dart';

class CaseDetails extends StatefulWidget {
  final OpenCases caseFile;

  const CaseDetails({super.key, required this.caseFile});

  @override
  State<CaseDetails> createState() => _CaseDetailsState();
}

class _CaseDetailsState extends State<CaseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Case Details"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          if (widget.caseFile.occurence!.occurenceDetails != null)
            for (var i in widget.caseFile.occurence!.occurenceDetails!)
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                              ' ${"${key}".toUpperCase()}: \t\t',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                      color: Colors.black),
                                            ),
                                          if (j['occurrence'][key] != null)
                                            if (!(j['occurrence'][key] is Map))
                                              Text(' ${j['occurrence'][key]}',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall
                                                      ?.copyWith(
                                                          color: Colors.black)),
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
                                                            color:
                                                                Colors.black)),
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
                              HorizontalOrLine(
                                  indentMultiply: 20,
                                  child: CommonText(
                                    title: 'Details',
                                    color: Colors.black,
                                  )),
                              ...(j['details'] as Map).keys.map((key) => Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children:  key
                                              .toString()
                                              .toLowerCase()
                                              .contains('date and time')
                                          ?
                                           [
                                              if (j['details'][key] != null)
                                                Text(' ${"${key}".toUpperCase()}: \t\t' ,
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
                                        Text(' ${"${key}".toUpperCase()}: \t\t' ,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall
                                                ?.copyWith(
                                                    color: Colors.black)),
                                      if (j['details'][key] != null)
                                        Text(' ${j['details'][key]}',
                                        overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall
                                                ?.copyWith(
                                                    color: Colors.black)),
                                    ],
                                  )),
                            ],
                          ),
                        ))
                  ],
                )
        ]),
      ),
    );
  }
}