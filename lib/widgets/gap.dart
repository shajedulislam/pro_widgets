import 'package:flutter/material.dart';

class ProGap extends StatelessWidget {
  final double? x;
  final double? y;

  ///Use this widget if you need to provide horizontal/vertical gap or space anywhere. Here x is horizontal gap and y is vertical gap.
  const ProGap({Key? key, this.x, this.y}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(key: key, width: x, height: y);
  }
}
