import 'package:flutter/material.dart';
import 'platform.dart';

class AppCards extends StatelessWidget {
  final Function()? onTap;
  final Widget? child;
  final bool bordered;
  final double borderRadius;
  final double? width;
  final double? height;
  final bool withShadow;
  final Key? key;
  final Color? color;

  AppCards(
      {this.onTap,
      this.child,
      this.key,
      this.color,
      this.withShadow = true,
      this.bordered = false,
      this.borderRadius = 0,
      this.height,
      this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.pageAllPadding),
      child: InkWell(
          onTap: onTap,
          child: Container(
              height: height,
              width: width,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      border: bordered
                          ? Border.all(color: ColorPalette.greyColor)
                          : null,
                      boxShadow: withShadow
                          ? [
                              BoxShadow(
                                color: Colors.black54,
                                offset: Offset(0.0, 1.0),
                                blurRadius: 4.0,
                              ),
                            ]
                          : null,
                      color: color ?? Colors.white),
                  child: child))),
    );
  }
}
