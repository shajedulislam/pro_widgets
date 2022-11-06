import 'package:flutter/material.dart';

import '../responsiveness/responsive.dart';

class ProCard extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final double? borderRadius;
  final BorderRadius? customBorderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  /// To show border you must provide `borderColor`.
  final Color? borderColor;

  /// To show border you must provide `borderColor`.
  final double? borderWidth;

  /// By default this ProCard has a shadow. If you do not need shadow then you can pass `false` here to disable shadow.
  final bool? disableShadow;
  final Color? shadowColor;
  final Offset? shadowOffset;
  final double? shadowBlurRadius;
  final double? shadowSpreadRadius;

  /// If you want the background color of the card to be gradient then you have to enable it by passing `true` here. After that you can pass any Gradient widget.
  final bool? gradientEnable;

  /// Here you can pass your Gradient widget to show gradient color as background of ProCard.
  ///
  /// Remember ! You must pass `true` in [ gradientEnable ] to show your Gradient.
  ///
  /// Example with LinearGradient :
  /// ```dart
  /// LinearGradient(
  ///   begin: Alignment.centerLeft,
  ///   end: Alignment.centerRight,
  ///   colors: [
  ///     Colors.blue,
  ///     Colors.green,
  ///   ],
  /// )
  /// ```
  final Gradient? gradient;

  final Widget? child;

  /// ProCard is simplified and very easy to use when you need a card design. We provided major parameters for you so that you can design it on your way easily.
  const ProCard({
    Key? key,
    this.width,
    this.height,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.customBorderRadius,
    this.disableShadow,
    this.shadowColor,
    this.shadowOffset,
    this.shadowBlurRadius,
    this.shadowSpreadRadius,
    this.gradientEnable,
    this.gradient,
    this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double design = doNotUseThisDesignValue(context: context);
    return Container(
      key: key,
      width: width,
      height: height,
      padding: padding ?? EdgeInsets.all(design * 16),
      margin: margin ?? const EdgeInsets.all(0),
      decoration: BoxDecoration(
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
        border: borderColor != null && borderWidth != null
            ? Border.all(
                color: borderColor!,
                width: borderWidth!,
              )
            : null,
        borderRadius: customBorderRadius ??
            BorderRadius.all(
              Radius.circular(
                borderRadius ?? design * 4,
              ),
            ),
        boxShadow: disableShadow != true
            ? [
                BoxShadow(
                  color: shadowColor ?? Colors.black.withOpacity(0.05),
                  offset: shadowOffset ?? Offset(0, design * 1),
                  blurRadius: shadowBlurRadius ?? design * 2,
                  spreadRadius: shadowSpreadRadius ?? 0,
                ),
              ]
            : [],
      ),
      child: child,
    );
  }
}
