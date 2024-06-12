import 'package:flutter/material.dart';

extension StringExtensions on String {
  String operator &(String? other) => '$this $other';
}

extension NavigationExtensions on BuildContext {
  Future<dynamic> appNavigatorPush(dynamic path) => Navigator.of(this)
      .push(MaterialPageRoute(builder: (BuildContext context) => path));
  Future<dynamic> appNavigatorPushNamed(String path) =>
      Navigator.of(this).pushNamed(path);

  Future<dynamic> appNavigatorReplacement(dynamic path) =>
      Navigator.pushReplacement(
          this, MaterialPageRoute(builder: (BuildContext context) => path));


  Future<dynamic> appNavigatorReplacementNamed(String path) =>
      Navigator.pushReplacementNamed(
          this, path);

  Future<dynamic> appNavigatorPushRemoveUntil(dynamic path) =>
      Navigator.pushAndRemoveUntil(
          this,
          MaterialPageRoute(builder: (context) => path),
          (Route<dynamic> route) => false);
  Future<dynamic> appNavigatorPushNamedRemoveUntil(String path) =>
      Navigator.pushNamedAndRemoveUntil(
          this,
         path,
          (Route<dynamic> route) => false);

  void back<T extends Object>([T? params]) {
    Navigator.of(this).pop([params]);
  }
}
