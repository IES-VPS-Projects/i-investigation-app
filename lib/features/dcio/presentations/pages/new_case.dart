import 'package:flutter/material.dart'; 
import 'package:iinvestigation/core/utilities/utilities.dart';
import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';
import 'package:iinvestigation/features/dcio/presentations/pages/view_case.dart';
 
import 'widgets/case_form.dart';

class NewCase extends StatefulWidget {
  final Occurence e;
  const NewCase({super.key, required this.e});

  @override
  State<NewCase> createState() => _NewCaseState();
}

class _NewCaseState extends State<NewCase> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Case"),
        centerTitle: true,
        actions: <Widget>[
          TextButton(
              onPressed: () {
                context.appNavigatorPush(ViewCaseDetails(e: widget.e,));
                // context.read<DcioCubit>().createCase(widget.e);
              },
              child: const Row(
                children: <Widget>[
                  Icon(Icons.visibility),
                  Text("View Details"),
                ],
              ))
        ],
      ),
      body: CaseForm(
        caseObject: widget.e ?? Occurence(),
      ),
    );
  }
}
