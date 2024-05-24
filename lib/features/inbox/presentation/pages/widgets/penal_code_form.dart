import 'package:dio/dio.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/utilities/utilities.dart';
import 'package:iinvestigation/features/inbox/data/models/penal_code_response/penal_code_response.dart';
import 'package:iinvestigation/features/inbox/presentation/pages/penal_code.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';

class PenalCodeForm extends StatefulWidget {
  final int id;
  const PenalCodeForm({super.key, required this.id});

  @override
  State<PenalCodeForm> createState() => _PenalCodeFormState();
}

class _PenalCodeFormState extends State<PenalCodeForm> {
  PenalCodeResponse? _penalCode;
  final List<PenalCodeResponse> _penalCodeList = [];
  @override
  void initState() {
    super.initState();
    context.read<InboxCubit>().getPenalCodes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text("Add Offence"),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  var _ii = _penalCodeList.map((e) => e.id).toList();
                  FormData payload = FormData.fromMap({
                    'penal': [..._ii],
                    'caseFileId': widget.id
                  });
                  print(_ii);

                  context
                      .read<InboxCubit>()
                      .createOffence(payload: payload)
                      .then((value) {
                    context.back();
                    context.read<InboxCubit>().getCaseFile(fd: widget.id);
                  });
                },
                // color: Colors.green,
                child: const Row(
                  children: <Widget>[
                    Icon(Icons.save),
                    Text("Save"),
                  ],
                ))
          ],
        ),
        body: context.watch<InboxCubit>().state.maybeWhen(
            orElse: () {
              return Column(
                children: [
                  DropdownSearch<PenalCodeResponse>(
                    filterFn: (item, filter) {
                      return "${item!.penal} ${item.description!} "
                          .contains(filter);
                    },
                    dropdownBuilder: (context, selectedItem) {
                      return _penalCode == null
                          ? ListTile(
                              title: Text(
                                "Select Officer Incharge",
                              ),
                            )
                          : ListTile(
                              title: Text(
                                  "${selectedItem!.penal} ${selectedItem!.description} "),
                            );
                    },
                    enabled: true,
                    popupProps: PopupProps.modalBottomSheet(
                        showSearchBox: true,
                        searchFieldProps: const TextFieldProps(
                            padding: EdgeInsets.all(20),
                            autocorrect: true,
                            decoration: InputDecoration(
                                hintText: "search",
                                suffixIcon: Icon(Icons.search))),
                        itemBuilder: (context, item, isSelected) => ListTile(
                              selected: isSelected,
                              enabled: true,
                              title: Text(
                                "${item!.penal} ${item.description} ",
                                style: TextStyle(color: Colors.black),
                              ),
                            )),
                    items:
                        context.watch<InboxCubit>().state.payload.penalCodes!,
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Select Officer  Incharge ",
                        hintText: "Select Officer  Incharge ",
                      ),
                    ),
                    onChanged: (PenalCodeResponse? value) {
                      // _penalCodeList.contains((element)=>element.)
                      _penalCodeList.add(value!);

                      setState(() {
                        _penalCode = value;
                      });

                      // Navigator.pop(context, value);
                    },
                    selectedItem:
                        (context.watch<InboxCubit>().state.payload.penalCodes!)
                            .first,
                  ),
                ],
              );
            },
            loading: (_) => const Center(
                  child: CircularProgressIndicator(),
                )));
  }
}
