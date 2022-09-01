import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_widgets/colors.dart';

class ProScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final Color? backgroundColor;

  /// To change the status bar / tool bar color in android mobiles, use this parameter.
  final Color? statusBarColorAndroid;

  /// You can change status bar / tool bar text and icon color using this parameter.
  final Brightness? statusBarItemsColor;
  final bool? resizeToAvoidBottomInset;

  /// ProScaffold uses flutter Scaffold but we made it more easier.
  const ProScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.drawer,
    this.backgroundColor,
    this.statusBarColorAndroid,
    this.statusBarItemsColor,
    this.resizeToAvoidBottomInset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor:
            statusBarColorAndroid ?? ProColors.black.withOpacity(0.2),
        statusBarBrightness: statusBarItemsColor != null
            ? statusBarItemsColor == Brightness.light
                ? Brightness.dark
                : Brightness.light
            : Brightness.dark,
        statusBarIconBrightness: statusBarItemsColor ?? Brightness.light,
      ),
      child: Scaffold(
        key: key,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? true,
        backgroundColor: backgroundColor ?? ProColors.white,
        appBar: appBar,
        body: body,
        drawer: drawer,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
