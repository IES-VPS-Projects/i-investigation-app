import 'package:flutter/material.dart';

import '../platform/color_palette.dart';

extension AppNotifications on BuildContext {
  void showCustomSnackBar(String message, {bool isError = false}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      duration: Duration(milliseconds: 300),
      backgroundColor: isError ? Colors.red : ColorPalette.greenColor,
      content: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
    ));
  }
}

extension SeparatorExtension on String {
  String get removeHyphen => this.split("_").map((str) => str).join(" ");
}

extension CapExtension on String {
  String get inCaps => '${this[0].toUpperCase()}${this.substring(1)}';
  String get capitalizeFirstofEach =>
      this.split(" ").map((str) => str.inCaps).join(" ");
}

extension MyIterable<E> on Iterable<E> {
  Iterable<E> sortedBy(Comparable key(E e)) =>
      toList()..sort((a, b) => key(a).compareTo(key(b)));
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
