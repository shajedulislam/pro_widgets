import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pro_widgets/widgets/box_decoration.dart';

import 'texts/text.dart';

/// proBottomSheet is a basic bottom sheet made with major needs by default. You can save your time by using this basic bottom sheet.
proBottomSheet({
  required BuildContext context,
  bool? isScrollControlled,
  String? appBarTitle,
  Color? appBarTitleColor,
  double? appBarTitleSize,
  FontWeight? appBarTitleWeight,
  double? appBarHeight,
  EdgeInsets? appBarPadding,
  Color? appBarBackgroundColor,
  Color? sheetBackgroundColor,
  double? sheetHeight,
  EdgeInsets? sheetMargin,
  BorderRadius? customBorderRadius,

  /// If you want to create your own app bar instead of our default sheet app bar then you can pass your design here.
  Widget? customAppBar,
  double? appBarCloseIconSize,
  Color? appBarCloseIconColor,

  /// We tried to create a basic bottom sheet with major needs. You can just pass your body here and use it to save some time.
  required Widget sheetBody,
  Function? onAppBarCloseIconTap,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: isScrollControlled ?? false,
    backgroundColor: Colors.transparent,
    builder: (_) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: proBoxDecoration(
              backgroundColor: sheetBackgroundColor ?? Colors.white,
              customBorderRadius: customBorderRadius ??
                  const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
            ),
            margin: sheetMargin ??
                EdgeInsets.only(
                  top: Platform.isIOS ? 50 : 30,
                ),
            width: double.infinity,
            height:
                sheetHeight ?? (MediaQuery.of(context).size.height / 100) * 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: customBorderRadius ??
                      const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                  child: customAppBar ??
                      Container(
                        color: appBarBackgroundColor ?? Colors.white,
                        height: appBarHeight ?? 50,
                        width: double.infinity,
                        padding: appBarPadding ??
                            const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProText(
                              text: appBarTitle ?? "Title",
                              fontSize: appBarTitleSize ?? 16,
                              color: appBarTitleColor ?? Colors.black,
                              fontWeight: appBarTitleWeight ?? FontWeight.w700,
                            ),
                            InkWell(
                              onTap: () {
                                if (onAppBarCloseIconTap != null) {
                                  onAppBarCloseIconTap();
                                }
                              },
                              child: Icon(
                                Icons.close_rounded,
                                color: appBarCloseIconColor ?? Colors.black,
                                size: appBarCloseIconSize ?? 24,
                              ),
                            )
                          ],
                        ),
                      ),
                ),
                Expanded(child: sheetBody)
              ],
            ),
          ),
        ),
      );
    },
  );
}
