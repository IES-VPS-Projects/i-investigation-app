import 'package:flutter/material.dart';

extension StringExtensions on String {
  String operator &(String? other) => '$this $other';
}

extension NavigationExtensions on BuildContext {
  Future<dynamic> appNavigatorPush(dynamic path) => Navigator.of(this)
      .push(MaterialPageRoute(builder: (BuildContext context) => path));

  Future<dynamic> appNavigatorReplacement(dynamic path) =>
      Navigator.pushReplacement(
          this, MaterialPageRoute(builder: (BuildContext context) => path));

  Future<dynamic> appNavigatorPushRemoveUntil(dynamic path) =>
      Navigator.pushAndRemoveUntil(
          this,
          MaterialPageRoute(builder: (context) => path),
          (Route<dynamic> route) => false);

  void back<T extends Object>([T? params]) {
    Navigator.of(this).pop([params]);
  }
}
