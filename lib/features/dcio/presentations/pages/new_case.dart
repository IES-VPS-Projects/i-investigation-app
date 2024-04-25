import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';

import '../state/dcio_cubit.dart';
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
      ),
      body: CaseForm(
        caseObject: widget.e ?? Occurence(),
      ),
    );
  }
}
