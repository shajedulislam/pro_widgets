import 'package:flutter/material.dart';
import 'package:pro_widgets/colors.dart';

import '../box_decoration.dart';
import '../texts/text.dart';

class ProButtonBasic extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final String? text;
  final double? fontSize;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final EdgeInsets? padding;
  final double? borderRadius;
  final double? borderWidth;
  final BorderRadius? customBorderRadius;
  final Color? borderColor;
  final Color? splashColor;
  final bool? disableShadow;
  final Color? shadowColor;
  final Offset? shadowOffset;
  final double? shadowBlurRadius;
  final double? shadowSpreadRadius;
  final FocusNode? focusNode;
  final Function onTap;
  final Widget? customChild;

  /// ProButtonBasic is a basic button made with important parameters that a developer will need. Modify the button in your way, passing values easily.
  const ProButtonBasic({
    Key? key,
    this.text,
    this.fontSize,
    this.fontColor,
    this.fontWeight,
    this.width,
    this.height,
    this.borderRadius,
    this.backgroundColor,
    this.padding,
    this.focusNode,
    this.disableShadow,
    required this.onTap,
    this.customChild,
    this.borderWidth,
    this.customBorderRadius,
    this.borderColor,
    this.splashColor,
    this.shadowColor,
    this.shadowOffset,
    this.shadowBlurRadius,
    this.shadowSpreadRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: proBoxDecoration(
        context: context,
        borderRadius: borderRadius,
        customBorderRadius: customBorderRadius,
        shadowBlurRadius: shadowBlurRadius,
        disableShadow: disableShadow ?? backgroundColor == Colors.transparent
            ? true
            : false,
        shadowOffset: shadowOffset,
        shadowColor: shadowColor,
        shadowSpreadRadius: shadowSpreadRadius,
        backgroundColor: backgroundColor ?? ProColors.blueDeep,
        borderColor: borderColor ?? Colors.transparent,
        borderWidth: borderWidth ?? 0,
      ),
      width: width ?? double.infinity,
      height: height ?? 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          minimumSize: const Size(50, 20),
          padding: padding ?? const EdgeInsets.all(4),
          primary: backgroundColor ?? ProColors.blueDeep,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius ?? 4,
            ),
          ),
          shadowColor: Colors.transparent,
        ),
        focusNode: focusNode,
        onPressed: () {
          onTap();
        },
        child: customChild ??
            ProText(
              text: text ?? "Button",
              fontSize: fontSize ?? 16,
              fontWeight: fontWeight ?? FontWeight.w600,
              color: fontColor ?? Colors.white,
            ),
      ),
    );
  }
}
