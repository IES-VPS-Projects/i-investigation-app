import 'package:flutter/material.dart';

import 'widgets/incoming.dart';

class DcioDashboard extends StatelessWidget {
  const DcioDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          centerTitle: true,
          bottom: const TabBar(tabs: <Tab>[
            Tab(
              icon: Icon(Icons.bubble_chart),
              text: "Analytics",
            ),
            Tab(
              icon: Icon(Icons.move_to_inbox),
              text: "Incoming Investigations",
            )
          ]),
        ),
        body: TabBarView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Column(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Incoming(),
            ),
          ],
        ),
      ),
    );
  }
}
