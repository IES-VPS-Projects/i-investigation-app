import 'package:flutter/material.dart';
import 'package:iinvestigation/features/closed/presentation/pages/closed.dart';
import 'package:iinvestigation/core/utilities/app_navigation.dart';
import 'package:iinvestigation/features/dcio/presentations/pages/dashboard.dart';
import 'package:iinvestigation/features/dcio/unassigned/precentation/pages/unnassigned.dart';
import 'package:iinvestigation/features/inbox/presentation/pages/inbox.dart';
import 'package:iinvestigation/features/new_case/presentation/pages/new_case.dart';

class DashGridMenu extends StatefulWidget {
  final  String role ;
  const DashGridMenu({Key? key, required this.role}) : super(key: key);
  @override
  _DashGridMenuState createState() => _DashGridMenuState();
}

class _DashGridMenuState extends State<DashGridMenu> {
   var menusInvestigatingOfficer = [
    {
      "name": "DCIO Dashboard",
      "icon": Icons.dashboard,
      "route": const DcioDashboard(),
      "iconColor": Colors.white
    },
     
    {
      "name": "Ongoing Cases",
      "icon": Icons.inbox,
      "route": const InboxPage(),
      "iconColor": Colors.white,
    },
    {
      "name": "Closed",
      "icon": Icons.cloud_off,
      "route": const ClosedCases(),
      "iconColor": Colors.white
    },
     
    {
      "name": "Inactive",
      "icon": Icons.stop_screen_share,
      "route": const DcioDashboard(),
      "iconColor": Colors.white
    }
  ];
  var menus = [
    {
      "name": "DCIO Dashboard",
      "icon": Icons.dashboard,
      "route": const DcioDashboard(),
      "iconColor": Colors.white
    },
    {
      "name": "New Case",
      "icon": Icons.create_new_folder,
      "route": const NewCase(),
      "iconColor": Colors.white
    },
    {
      "name": "Ongoing Cases",
      "icon": Icons.inbox,
      "route": const InboxPage(),
      "iconColor": Colors.white,
    },
    {
      "name": "Closed",
      "icon": Icons.cloud_off,
      "route": const ClosedCases(),
      "iconColor": Colors.white
    },
    {
      "name": "Unassigned",
      "icon": Icons.hourglass_full,
      "route": const UnassingedCases(),
      "iconColor": Colors.white
    },
    {
      "name": "Inactive",
      "icon": Icons.stop_screen_share,
      "route": const DcioDashboard(),
      "iconColor": Colors.white
    }
  ];

  @override
  void initState() {
    super.initState();
    _notificationListener();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      children: widget.role!= 'admin'?
       List.generate(menusInvestigatingOfficer.length
      , (index) {
        return  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white.withOpacity(.4),
            child: Stack(
              alignment: FractionalOffset.center,
              children: <Widget>[
                TextButton(
                  style: const ButtonStyle(
                      // backgroundColor: MaterialStatePropertyAll<Color>(Colors.black.withOpacity(.2))
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          menusInvestigatingOfficer[index]["icon"] as IconData?,
                          size: 75.0,
                          color: menusInvestigatingOfficer[index]["iconColor"] as Color,
                        ),
                        Text('${menusInvestigatingOfficer[index]["name"] } ')
                      ],
                    ),
                  ),
                  onPressed: () {
                    context.appNavigatorPush(menusInvestigatingOfficer[index]['route'] as Widget);
                    // Navigator.of(context).p('${menus[index]["route"]}');
                  },
                ),
                Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: menus[index]["notice"] != null
                      ? CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Text('$AboutDialog(){menus[index]["notice"]}'),
                        )
                      : Container(),
                )
              ],
            ),
          ),
        );
      })
      : 
      List.generate(menus.length
      , (index) {
        return  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white.withOpacity(.4),
            child: Stack(
              alignment: FractionalOffset.center,
              children: <Widget>[
                TextButton(
                  style: const ButtonStyle(
                      // backgroundColor: MaterialStatePropertyAll<Color>(Colors.black.withOpacity(.2))
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          menus[index]["icon"] as IconData?,
                          size: 75.0,
                          color: menus[index]["iconColor"] as Color,
                        ),
                        Text('${menus[index]["name"] } ')
                      ],
                    ),
                  ),
                  onPressed: () {
                    context.appNavigatorPush(menus[index]['route'] as Widget);
                    // Navigator.of(context).p('${menus[index]["route"]}');
                  },
                ),
                Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: menus[index]["notice"] != null
                      ? CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Text('$AboutDialog(){menus[index]["notice"]}'),
                        )
                      : Container(),
                )
              ],
            ),
          ),
        );
      }),
   
   
    );
  }

  _notificationListener() async {}
}
