import 'package:flutter/material.dart';

class ProTapper extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? padding;
  final Function onTap;
  final bool? skipTraversal;

  /// To do something on tap using any widgets, wrap your widget inside ProTapper and use onTap function.
  const ProTapper({
    Key? key,
    this.child,
    this.padding,
    required this.onTap,
    this.skipTraversal,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        key: key,
        focusNode: FocusNode(skipTraversal: skipTraversal ?? true),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        child: Padding(
          padding: padding ?? const EdgeInsets.all(2),
          child: child,
        ),
        onTap: () {
          onTap();
        });
  }
}
