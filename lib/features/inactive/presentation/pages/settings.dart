import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/utilities/utilities.dart';
import 'package:iinvestigation/features/dashboard/presentation/pages/dashboard.dart';
import 'package:iinvestigation/features/dcio/presentations/state/dcio_cubit.dart';
import 'package:iinvestigation/features/inbox/data/models/case_file/case_file_officer.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:iinvestigation/features/inbox/presentation/pages/widgets/officers_list.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';

class Settings extends StatefulWidget {
  final OpenCases caseFile;
  const Settings({super.key, required this.caseFile});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Case Settings"),
        ),
        body: context.watch<InboxCubit>().state.maybeWhen(
              loading: (_) => Center(
                child: CircularProgressIndicator(),
              ),
              orElse: () => Column(
                children: [
                  ListTile(
                    onTap: () {
                      context.read<DcioCubit>().getUsers().then((value) {
                      context.read<DcioCubit>().addOfficersListToCase(widget.caseFile.caseFileOfficers);
                        context.appNavigatorPush(OfficerPickerSettings(
                          caseFile: widget.caseFile,
                        ));
                      });
                    },
                    title: const Text("Manage Case OFFicers"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                 
               ListTile(
                    selected: true,
                    selectedColor: Colors.redAccent,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                            title: const Text("Confirmation"),
                            content: const Text(
                                "Are you sure you want to suspend the case?"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  // Handle "Yes" button press
                                  Navigator.of(context).pop();
                                  context
                                      .read<InboxCubit>()
                                      .closeCase(id: widget.caseFile.id!)
                                      .then((value) {
                                    context.appNavigatorReplacement(
                                        const Dashboard());
                                  });
                                },
                                child: Text("Yes"),
                              ),
                              TextButton(
                                onPressed: () {
                                  // Handle "No" button press
                                  Navigator.of(context).pop();
                                },
                                child: Text("No"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    title: const Text(" Close Case"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
              
                ],
              ),
            ));
  }
}
