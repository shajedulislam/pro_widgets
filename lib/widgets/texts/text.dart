import 'package:flutter/material.dart';
import 'package:pro_widgets/colors.dart';

class ProText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final String? fontFamily;
  final TextOverflow? overflow;
  final double? lineheight;
  final TextAlign? alignment;
  final int? maxLines;
  final double? letterSpacing;
  final TextDirection? textDirection;
  final Color? backgroundColor;
  final TextDecoration? decoration;
  final TextDecorationStyle? textDecorationStyle;
  final Locale? locale;

  /// You can use this widget for texts. Inside we are using Text widget but ProText wrapped it to make Text widget usage easier.
  const ProText({
    Key? key,
    this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.alignment,
    this.lineheight,
    this.maxLines,
    this.decoration,
    this.overflow,
    this.textDirection,
    this.textDecorationStyle,
    this.locale,
    this.backgroundColor,
    this.fontStyle,
    this.fontFamily,
    this.letterSpacing,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "Text",
      key: key,
      overflow: overflow,
      textAlign: alignment,
      maxLines: maxLines,
      textDirection: textDirection,
      locale: locale,
      style: TextStyle(
        height: lineheight,
        color: color ?? ProColors.black,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w500,
        decoration: decoration,
        decorationStyle: textDecorationStyle,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
