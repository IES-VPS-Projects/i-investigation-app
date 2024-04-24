import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/features/auth/data/models/auth_response_model/auth_response_model.dart';
import 'package:iinvestigation/features/auth/presentation/state/auth_cubit.dart';

class DashboardHeader extends StatefulWidget {
  @override
  _DashboardHeaderState createState() => _DashboardHeaderState();
}

class _DashboardHeaderState extends State<DashboardHeader> {
  @override
  void initState() {
    getUser();
  }

  void getUser() async {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
        child:
            //  Text("${context.read<AuthCubit>().state.payload.user!}")
            getDashboardWIdget(
                null, context.read<AuthCubit>().state.payload.user!));
  }

  Widget getDashboardWIdget(dynamic officerDoc, AuthResponseModel user) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            createAvatar("${user.data?.name}"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Welcome,",
                    style: TextStyle(
                        fontWeight: FontWeight.w100, color: Colors.green),
                  ),
                  Text(
                    "${user.data?.name}",
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                  Container(
                      color: const Color(0xFF00C6FF),
                      width: 72.0,
                      height: 1.0,
                      margin: const EdgeInsets.symmetric(vertical: 8.0)),
                  Row(
                    children: <Widget>[
                      Text(
                        "Service Number: \t",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "${user.data?.serviceNumber}",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget createAvatar(String name) {
    String init = name[0].toUpperCase();
    return CircleAvatar(
      radius: 40,
      child: Text(init),
    );
  }
}
