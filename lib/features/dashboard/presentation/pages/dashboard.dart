import 'package:flutter/material.dart';

import 'widgets/dashGridMenu.dart';
import 'widgets/dashboardHeader.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  Navigator.pushNamed(context, "/notifications");
                }),
            IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {})
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: DashboardHeader(),
            ),
            Expanded(
              flex: 6,
              child: DashGridMenu(),
            ),
          ],
        ));
  }
}
