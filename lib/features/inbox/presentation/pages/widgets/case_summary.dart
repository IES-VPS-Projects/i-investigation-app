import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/case_file_officer.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';

class CaseSummary extends StatelessWidget {
  CaseSummary(this.caseObject, {super.key});
  OpenCases caseObject;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.blueGrey,
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const Text(
                  "Case Dashboard:",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    children: <TableRow>[
                      TableRow(children: <Widget>[
                        const Text("Case Heading"),
                        Text(
                            "${caseObject.occurence == null ? caseObject.internalOccurence?.title : (jsonDecode(caseObject.occurence!.occurenceDetails!.first.details!) as List).map((e) => e['category']['name'])}"),
                      ]),
                      TableRow(
                        children: <Widget>[
                          const Text("Linked OB number"),
                          Text(
                              " ${caseObject.occurence == null ? caseObject.internalOccurence?.obNo : caseObject.occurence?.obNo}"),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          Text("Created: "),
                          Text(
                              "${caseObject.occurence == null ? caseObject.internalOccurence?.created_at : caseObject.occurence?.postedDate}")
                          // Text(timeago.format(DateTime.fromMillisecondsSinceEpoch(
                          //     caseObject.createTs.millisecondsSinceEpoch))),
                        ],
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Assigned officers:",
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(
                  child: _AssignedCard(
                    caseObject: caseObject,
                    assigned: caseObject.caseFileOfficers == null
                        ? []
                        : caseObject.caseFileOfficers!,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable, unused_element
class _AssignedCard extends StatelessWidget {
  List<CaseFileOfficer> assigned;
  OpenCases? caseObject;
  _AssignedCard({required this.assigned, this.caseObject});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // number of items in each row
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
        ),
        itemCount: assigned.length,
        padding: const EdgeInsets.all(8.0),
        // Generate 100 Widgets that display their index in the List
        itemBuilder: (context, index) => Card(
              color: caseObject?.leadOfficer?.id != assigned[index].user?.id
                  ? Colors.white
                  : Colors.green,
              child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          caseObject?.leadOfficer?.id !=
                                  assigned[index].user?.id
                              ? SizedBox()
                              : Text(
                                  "LEAD",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                          Text(
                            "${assigned[index].user?.name} ",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )),
            ));
  }

  Widget createAvatar(String name) {
    String init = name[0].toUpperCase();
    return CircleAvatar(
      backgroundColor: Colors.blueGrey,
      child: Text(
        init,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
