import 'package:flutter/material.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/case_file_officer.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';

class CaseSummary extends StatelessWidget {
  CaseSummary(this.caseObject);
  OpenCases caseObject;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      color: Colors.blueGrey,
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                "Case Dashboard:",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                  children: <TableRow>[
                    TableRow(children: <Widget>[
                      Text("Case Heading"),
                      Text("{caseObject.heading}"),
                    ]),
                    TableRow(
                      children: <Widget>[
                        Text("Linked OB number"),
                        Text("${caseObject.occurence?.obNo}"),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        Text("Created: "),
                        // Text(timeago.format(DateTime.fromMillisecondsSinceEpoch(
                        //     caseObject.createTs.millisecondsSinceEpoch))),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                "Assigned officers:",
                style: TextStyle(fontSize: 8),
              ),
              Expanded(
                child: _AssignedCard(
                  assigned: caseObject.caseFileOfficers ==null?[]:caseObject.caseFileOfficers!,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable, unused_element
class _AssignedCard extends StatelessWidget {
  List<CaseFileOfficer> assigned;
  _AssignedCard({required this.assigned});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this would produce 2 rows.
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        // Generate 100 Widgets that display their index in the List
        children: List.generate(assigned.length, (index) {
          return Card(
            color: Colors.white,
            child: InkWell(
              onTap: (){},
              child:  Center(
                        child: Text(
                          "${assigned[index].user?.name}",
                          style: TextStyle(fontSize: 7, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      )
               ),
          );
        }));
  }

  Widget createAvatar(String name) {
    String init = name[0].toUpperCase();
    return CircleAvatar(
      backgroundColor: Colors.blueGrey,
      child: Text(init, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
    );
  }
}

