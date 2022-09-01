import 'package:flutter/material.dart';
import 'package:pro_widgets/colors.dart';

class ProShape extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;
  final BorderRadius? customRadius;
  final Color? color;
  final Alignment? childAlignment;
  final Widget? child;

  /// If you need to make a widget like circle shape, square shape and etc. even with colors, then you can use this widget. It can contain a child also.
  const ProShape({
    Key? key,
    this.height,
    this.width,
    this.color,
    this.radius,
    this.customRadius,
    this.childAlignment,
    this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      height: height ?? 40,
      width: width ?? 40,
      alignment: childAlignment ?? Alignment.center,
      decoration: BoxDecoration(
        color: color ?? ProColors.blueDeep,
        borderRadius: customRadius ??
            BorderRadius.all(
              Radius.circular(
                radius ?? 2,
              ),
            ),
      ),
      child: child ?? const SizedBox.shrink(),
    );
  }
}
