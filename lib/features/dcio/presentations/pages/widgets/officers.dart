import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/features/dcio/data/models/users/users.dart';
import 'package:iinvestigation/features/dcio/presentations/state/dcio_cubit.dart';

import 'officer_list.dart';

class OfficerPicker extends StatefulWidget {
 final List<Users> officers;

  const OfficerPicker(this.officers, {super.key});

  @override
  _OfficerPickerState createState() => _OfficerPickerState();
}

class _OfficerPickerState extends State<OfficerPicker> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick officer"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              DragTarget<Users>(
                builder: (context, candidate, rejected) {
                  print(candidate);
                  print(rejected);
                  int officersPicked = widget.officers.length;
                  return 
                  
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                       Text("Officers Picked ($officersPicked)"),
                      Container(
                        height: 200.0,
                        child: _renderOfficers(),
                      )
                    ],
                  );
                },
                onAccept: (data) {
                  onAcceptOfficer(data);
                },
                onWillAcceptWithDetails: (data) {
                  // Users officer = Users.fromDocument(data);
                  // return widget.Officers.firstWhere((test) {
                  //       return test.idNumber == officer.idNumber;
                  //     }, orElse: () => null) ==
                  //     null;
                  return true;
                },
              ),
              Container(height: 270.0, child: OfficersListing())
            ],
          )),
    );
  }

  _renderOfficers() {
    if (widget.officers.length == 0) {
      return Center(
        child: Text("No Officer Picked"),
      );
    }
    return ListView(
      children: context.read<DcioCubit>().state.payload.users!.map((Users officer) {
        return Dismissible(
          background: Container(color: Colors.red),
          key: ObjectKey(officer),
          onDismissed: (direction) {
            setState(() {
              widget.officers.remove(officer);
            });
          },
          child: Card(
            child: ListTile(
              onTap: (){},
              title: Text(officer.name!),
              subtitle: Text(officer.serviceNumber!),
            ),
          ),
        );
      }).toList(),
    );
  }

  void onAcceptOfficer(data) async {
    // setState(() {
    //   widget.Officers.add(Officer.fromDocument(data));
    // });
  }
}
