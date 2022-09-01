import 'package:flutter/material.dart';
import 'package:pro_widgets/colors.dart';

import '../texts/text.dart';

class ProButtonText extends StatelessWidget {
  /// ProButtonText is a basic text type button made with major parameters that a developer will need. Modify the button in your way, passing values easily.
  const ProButtonText({
    Key? key,
    this.text,
    this.fontSize,
    this.fontColor,
    this.fontWeight,
    this.width,
    this.height,
    this.borderRadius,
    this.backgroundColor,
    this.elevation,
    this.padding,
    this.focusNode,
    required this.function,
  }) : super(key: key);

  final String? text;
  final double? fontSize;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? backgroundColor;
  final double? elevation;
  final EdgeInsets? padding;
  final FocusNode? focusNode;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: key,
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 0,
          minimumSize: const Size(1, 1),
          padding: padding ??
              const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 4,
              ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius ?? 4,
            ),
          ),
        ),
        focusNode: focusNode,
        onPressed: () {
          function();
        },
        child: ProText(
          text: text ?? "Button",
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.w500,
          color: fontColor ?? ProColors.black,
        ),
      ),
    );
  }
}
