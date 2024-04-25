import 'package:flutter/material.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';

class ViewCaseForm extends StatefulWidget {
  final OpenCases caseObject;
  final dynamic hasAccepted;
  ViewCaseForm({required this.caseObject, this.hasAccepted});
  @override
  _ViewCaseFormState createState() => _ViewCaseFormState();
}

class _ViewCaseFormState extends State<ViewCaseForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Stack(
          children: <Widget>[
            // widget.hasAccepted
            //     ? CaseMenu(caseObject)
            //     : Stack(
            //         children: <Widget>[
            //           IgnorePointer(child: CaseMenu(caseObject)),
            //           Positioned.fill(
            //             child: BackdropFilter(
            //               filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            //               child: Column(
            //                 mainAxisSize: MainAxisSize.max,
            //                 mainAxisAlignment: MainAxisAlignment.end,
            //                 children: <Widget>[
            //                   ButtonBar(
            //                     children: <Widget>[
            //                       FlatButton(
            //                           onPressed: () {
            //                             Navigator.pop(context);
            //                           },
            //                           textColor: Colors.red,
            //                           child: Text("Decline Case")),
            //                       RaisedButton(
            //                           onPressed: _confirmAccept,
            //                           textColor: Colors.white,
            //                           color: Colors.green,
            //                           child: Text("Accept Case"))
            //                     ],
            //                   )
            //                 ],
            //               ),
            //             ),
            //           )
            //         ],
            //       ),
          ],
        ));
  }

  // void dismissProgressHUD() {
  //   setState(() {
  //     if (_loading) {
  //       _progressHUD.state.dismiss();
  //     } else {
  //       _progressHUD.state.show();
  //     }

  //     _loading = !_loading;
  //   });
  // }

  // void acceptCase() async {
  //   dismissProgressHUD();
  //   FirebaseUser user = await _auth.currentUser();
  //   DocumentSnapshot caseDoc = await Firestore.instance
  //       .collection("cases")
  //       .document(widget.caseObject.id)
  //       .get();
  //   List<dynamic> acknowledges = caseDoc.data["acknowledges"];
  //   var tempOutput = new List<String>.from(acknowledges);
  //   tempOutput.add(user.uid);
  //   await Firestore.instance
  //       .collection("cases")
  //       .document(widget.caseObject.id)
  //       .updateData({'acknowledges': tempOutput});

  //   dismissProgressHUD();

  //   Navigator.pop(context);
  // }

  // void _confirmAccept() {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text("Accept Case"),
  //           content: Text("Acknowledge case assignment?"),
  //           actions: <Widget>[
  //             RaisedButton(
  //                 textColor: Colors.white,
  //                 color: Colors.green,
  //                 onPressed: () {
  //                   acceptCase();
  //                   Navigator.pop(context);
  //                 },
  //                 child: Text("Accept")),
  //             FlatButton(
  //                 onPressed: () {
  //                   Navigator.pop(context);
  //                 },
  //                 child: Text("Close"))
  //           ],
  //         );
  //       });
  // }
}
