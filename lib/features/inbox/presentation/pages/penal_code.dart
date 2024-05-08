import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/data/network_datasource/config.dart';
import 'package:iinvestigation/core/utilities/utilities.dart';
import 'package:iinvestigation/features/inbox/presentation/pages/widgets/penal_code_form.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';

class PenalCode extends StatelessWidget {
  final int id;
  final bool isClosed;
  const PenalCode({required this.id, this.isClosed = false});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("Case Offences"),
          elevation: 0.0,
          actions: <Widget>[
            isClosed
                ? const SizedBox()
                : TextButton(
                    onPressed: () {
                      context.appNavigatorPush(PenalCodeForm(id: id));
                    },
                    child: const Row(
                      children: <Widget>[
                        Icon(Icons.playlist_add),
                        Text(" Add"),
                      ],
                    ))
          ],
        ),
        body: ListView(
            children: context.watch<InboxCubit>().state.payload.caseFile == null
                ? []
                : context
                    .watch<InboxCubit>()
                    .state
                    .payload
                    .caseFile!
                    .data!
                    .caseNotesOffences!
                    .where((element) =>
                        isClosed == true ? element.caseSummaryId != null : true)
                    .map((e) => ListTile(
                          dense: true,
                          title: Text("${e.penalcode?.penal}"),
                        ))
                    .toList()));
  }
}
