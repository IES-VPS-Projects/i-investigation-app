import 'package:flutter/material.dart';
import 'package:iinvestigation/core/data/datasources/local_storage_data_source.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:iinvestigation/features/inbox/presentation/pages/case_menu.dart';

import 'closed_menu.dart';

class ViewCaseFormClosed extends StatefulWidget {
  final OpenCases caseObject;
  final dynamic hasAccepted;
  ViewCaseFormClosed({required this.caseObject, this.hasAccepted});
  @override
  _ViewCaseFormState createState() => _ViewCaseFormState();
}

class _ViewCaseFormState extends State<ViewCaseFormClosed> {
  @override
  void initState() {
    super.initState();
    getServiceNumber();
  }

  dynamic _profile = '22';

  void getServiceNumber() async {
    _profile = await getData('service_Number');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Stack(
          children: <Widget>[
            widget.hasAccepted == "PENDING"
                ? Stack(
                    children: <Widget>[
                      ClosedCaseMenu(
                        caseObject: widget.caseObject,
                      ),
                      // Positioned.fill(
                      //   child: BackdropFilter(
                      //     filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                      //     child: Column(
                      //       mainAxisSize: MainAxisSize.max,
                      //       mainAxisAlignment: MainAxisAlignment.end,
                      //       children: <Widget>[
                      //         ButtonBar(
                      //           children: <Widget>[

                      //              TextButton(
                      //                 onPressed: () {
                      //                   Navigator.pop(context);
                      //                 },
                      //                 style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.red)),
                      //                 child:const Text("Decline Case")),
                      //                 // ElevatedButton(onPressed: onPressed, child: child)
                      //             ElevatedButton(
                      //                 onPressed: (){},
                      //                 style: const ButtonStyle(
                      //                   backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                      //                   foregroundColor: MaterialStatePropertyAll<Color>(Colors.white)
                      //                   ),
                      //                 child: Text("Accept Case"))
                      //           ],
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // )
                    ],
                  )
                : Text("caseObject"),
          ],
        ));
  }
}
