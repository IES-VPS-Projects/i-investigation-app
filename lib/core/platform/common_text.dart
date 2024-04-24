import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'color_palette.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {Key? key,
      required this.title,
      this.align,
      this.color,
      this.size,
      this.weight})
      : super(key: key);
  final String title;
  final TextAlign? align;
  final double? size;
  final FontWeight? weight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(title,
        textAlign: align ?? TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(fontSize: size, fontWeight: weight, color: color));
  }
}

class CommonTextHeaders extends StatelessWidget {
  const CommonTextHeaders(
      {Key? key, required this.title, this.weight, this.align, this.size})
      : super(key: key);
  final String title;
  final double? size;
  final TextAlign? align;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(title,
        textAlign: align,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
            fontSize: size ?? 19,
            color: ColorPalette.blackColor,
            fontWeight: weight ?? FontWeight.w500));
  }
}

class CommonRichTextHelper extends StatelessWidget {
  final String text;
  final String secondaryText;
  final Color? primaryTextColor;
  final FontWeight? primaryTextweight;
  final double? primaryTextSize;
  final Color? secondaryTextColor;
  final FontWeight? secondaryTextweight;
  final double? secondaryTextSize;

  CommonRichTextHelper(
      {required this.text,
      required this.secondaryText,
      this.primaryTextColor,
      this.primaryTextSize,
      this.primaryTextweight,
      this.secondaryTextColor,
      this.secondaryTextSize,
      this.secondaryTextweight});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: text,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: primaryTextColor,
              fontSize: primaryTextSize,
              fontWeight: primaryTextweight),
          children: <TextSpan>[
            TextSpan(
                text: secondaryText,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: secondaryTextColor,
                    fontSize: secondaryTextSize,
                    fontWeight: secondaryTextweight))
          ]),
    );
  }
}
