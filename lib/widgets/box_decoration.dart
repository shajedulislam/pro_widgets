import 'package:flutter/material.dart';

/// Box decoration for widgets like the container etc. is now more easy with proBoxDecoration. Just check parameters and pass values.
BoxDecoration proBoxDecoration({
  Color? backgroundColor,
  double? borderRadius,
  BorderRadius? customBorderRadius,
  Color? borderColor,
  double? borderWidth,
  bool? enableShadow,
  Color? shadowColor,
  Offset? shadowOffset,
  double? shadowBlurRadius,
  double? shadowSpreadRadius,
  bool? gradientEnable,
  Gradient? gradient,
}) {
  return BoxDecoration(
    color: gradientEnable != true ? backgroundColor ?? Colors.white : null,
    gradient: gradientEnable == true
        ? gradient ??
            const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.blue,
                Colors.green,
              ],
            )
        : null,
    border: borderColor != null
        ? Border.all(
            color: borderColor,
            width: borderWidth ?? 1,
          )
        : null,
    borderRadius: customBorderRadius ??
        BorderRadius.all(
          Radius.circular(borderRadius ?? 4),
        ),
    boxShadow: enableShadow == true
        ? [
            BoxShadow(
              color: shadowColor ?? Colors.black.withOpacity(0.06),
              offset: shadowOffset ?? const Offset(0, 1),
              blurRadius: shadowBlurRadius ?? 3,
              spreadRadius: shadowSpreadRadius ?? 0,
            ),
          ]
        : [],
  );
}
