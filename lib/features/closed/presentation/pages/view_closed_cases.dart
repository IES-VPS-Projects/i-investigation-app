import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/features/closed/presentation/pages/closed_case_form.dart';
import 'package:iinvestigation/core/data/datasources/local_storage_data_source.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:iinvestigation/features/inbox/presentation/pages/view_case_form.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';

class ViewCaseClosed extends StatefulWidget {
  final OpenCases caseFile;
  final bool? isAdmin;

  const ViewCaseClosed(this.caseFile, this.isAdmin, {super.key});

  @override
  _ViewCaseState createState() => _ViewCaseState();
}

class _ViewCaseState extends State<ViewCaseClosed> {
  @override
  void initState() {
    super.initState();
    getServiceNumber();
    context.read<InboxCubit>().getCaseFile(fd: widget.caseFile.id!);
  }

  dynamic _profile = '22';

  void getServiceNumber() async {
    _profile = await getData('service_Number');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder(
        future: getData('service_Number'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("View Closed Case File"),
              ),
              body: ViewCaseFormClosed(
                  caseObject: widget.caseFile,
                  hasAccepted: widget.isAdmin == true ? 'PENDING' : false),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        });
  }
}
