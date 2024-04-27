import 'package:flutter/material.dart';

import 'sizes.dart';

class HorizontalOrLine extends StatelessWidget {
  const HorizontalOrLine({required this.child, this.indentMultiply = 1});

  final Widget child;

  final double indentMultiply;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSizes.pageHorizontalPadding),
      child: Row(children: <Widget>[
        Container(
          width: indentMultiply,
          margin: const EdgeInsets.only(left: 10.0, right: 15.0),
          child: Divider(
            color: Colors.black,
          ),
        ),
        child,
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 15.0, right: 10.0),
              child: Divider(
                color: Colors.black,
              )),
        ),
      ]),
    );
  }
}
