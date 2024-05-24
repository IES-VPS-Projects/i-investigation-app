import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/data/datasources/local_storage_data_source.dart';
import 'package:iinvestigation/core/utilities/utilities.dart';
import 'package:iinvestigation/features/dcio/presentations/pages/view_case.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:iinvestigation/features/inbox/presentation/pages/details.dart';
import 'package:iinvestigation/features/inbox/presentation/pages/view_case_form.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';

import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart'  as occurence;
class ViewCase extends StatefulWidget {
  final OpenCases caseFile;
  const ViewCase(this.caseFile, {super.key});

  @override
  _ViewCaseState createState() => _ViewCaseState();
}

class _ViewCaseState extends State<ViewCase> {
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
                title: const Text("View Case File"),
                actions: <Widget>[
          TextButton(
              onPressed: () {
                context.appNavigatorPush(CaseDetails(caseFile: widget.caseFile,));
                // context.appNavigatorPush(ViewCaseDetails(e: widget.caseFile.occurence! as occurence.Occurence,));
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
              body: ViewCaseForm(
                caseObject: widget.caseFile,
                hasAccepted: widget.caseFile.caseFileOfficers
                    ?.where((element) =>
                        element.user!.serviceNumber == snapshot.data)
                    .first
                    .accepted,
              ),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        });
  }
}
