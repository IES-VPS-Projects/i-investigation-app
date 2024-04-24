import 'package:flutter/material.dart';
import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';

import 'widgets/case_form.dart';

class NewCase extends StatelessWidget {
  final Occurence e;
  NewCase({required this.e});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Case"),
        centerTitle: true,
      ),
      body: CaseForm(
        caseObject: e ?? Occurence(),
      ),
    );
  }
}
