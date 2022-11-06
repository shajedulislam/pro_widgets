import 'package:flutter/material.dart';
import 'package:pro_widgets/colors.dart';

import '../responsiveness/responsive.dart';

class ProDivider extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? width;
  final EdgeInsets? margin;

  ///Use this widget if you need a divider. By default the width of the divider is half of the screen width.
  const ProDivider({
    Key? key,
    this.height,
    this.width,
    this.color,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double design = doNotUseThisDesignValue(context: context);
    return Container(
      key: key,
      width: width ?? (MediaQuery.of(context).size.width / 100) * 50,
      height: height ?? design * 1,
      color: color ?? ProColors.border,
      margin: margin ?? const EdgeInsets.all(0),
    );
  }
}
