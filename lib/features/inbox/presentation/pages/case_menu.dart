import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/core/utilities/utilities.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iinvestigation/features/inbox/presentation/pages/suspects.dart';

import 'widgets/case_summary.dart';

class CaseMenu extends StatefulWidget {
  final OpenCases caseObject;

  CaseMenu({required this.caseObject});
  @override
  _CaseMenuState createState() => _CaseMenuState();
}

class _CaseMenuState extends State<CaseMenu> {
  List<Widget> _tiles = [];

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: <Widget>[
        StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 3,
            child: CaseSummary(widget.caseObject)),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: _MenuTile(
                Colors.red,
                Image.asset(
                  "assets/images/suspect.png",
                  height: 50.0,
                  width: 37.5,
                ),
                "Suspects",
                "SubHeading", () {
              print(22);
              context.appNavigatorPush(Suspects(caseFile: widget.caseObject));
              // WidgetsBinding.instance!.addPostFrameCallback((_) {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             Suspects(caseFile: widget.caseObject)));
              // });
            }, 1)),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: _MenuTile(
                Colors.cyan,
                Image.asset(
                  "assets/images/witness.png",
                  height: 50.0,
                  width: 37.5,
                ),
                "Witnesses",
                "SubHeading", () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => Witnesses(id: caseObject.id)));
            }, 1)),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: _MenuTile(
                Colors.blueGrey,
                Image.asset(
                  "assets/images/citation.png",
                  height: 50.0,
                  width: 37.5,
                ),
                "Case notes",
                "SubHeading", () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CaseNotes(id: caseObject.id)));
            }, 1)),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: _MenuTile(
                Colors.lightBlueAccent,
                Image.asset(
                  "assets/images/evidence.png",
                  height: 50.0,
                  width: 37.5,
                ),
                "Materials",
                "SubHeading", () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CaseMaterial(
              //               id: caseObject.id,
              //             )));
            }, 1)),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: _MenuTile(
                Colors.amber,
                Image.asset(
                  "assets/images/offences.png",
                  height: 50.0,
                  width: 37.5,
                ),
                "Offences",
                "SubHeading", () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => Offences(
              //               id: caseObject.id,
              //             )));
            }, 1)),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: _MenuTile(
                Colors.blue,
                Image.asset(
                  "assets/images/summary.png",
                  height: 50.0,
                  width: 37.5,
                ),
                "Summary",
                "SubHeading", () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => CaseSummaryDoc(
              //               docId: caseObject.id,
              //             )));
            }, 1)),
      ],
    );
  }
}

class _MenuTile extends StatelessWidget {
  final Function onTap;

  const _MenuTile(this.backgroundColor, this.image, this.heading,
      this.subHeading, this.onTap, this.count);

  final Color backgroundColor;
  final Widget image;
  final String heading;
  final String subHeading;
  final int count;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                image,
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 15.0,
                      backgroundColor: Colors.blueGrey,
                      child: Text(
                        count.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                      heading,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
