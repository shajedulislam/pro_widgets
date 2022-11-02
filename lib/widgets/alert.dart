import 'package:flutter/material.dart';
import 'package:pro_widgets/colors.dart';
import 'package:pro_widgets/pro_widgets.dart';

import '../responsiveness/responsive.dart';

class ProAlertClassic extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsets? titlePadding;
  final EdgeInsets? contentPadding;
  final double? buttonsHeight;
  final String? title;
  final double? titleFontSize;
  final String? message;
  final double? messageFontSize;
  final String? button1Text;
  final double? button1FontSize;
  final Function? button1Function;
  final String? button2Text;
  final double? button2FontSize;
  final Function? button2Function;
  final double? alertBorderRadius;
  final bool? closeAlertOnTapArround;
  final Color? colorAroundTheAlert;

  /// To show some information in an alert you can use this widget. It should be used where the return type is [ Widget ]
  const ProAlertClassic({
    super.key,
    this.width,
    this.height,
    this.titlePadding,
    this.contentPadding,
    this.buttonsHeight,
    this.title,
    this.titleFontSize,
    this.message,
    this.messageFontSize,
    this.button1Text,
    this.button1FontSize,
    this.button1Function,
    this.button2Text,
    this.button2FontSize,
    this.button2Function,
    this.alertBorderRadius,
    this.colorAroundTheAlert,
    this.closeAlertOnTapArround,
  });
  @override
  Widget build(BuildContext context) {
    double design = doNotUseThisDesignValue(context: context);
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            alertBorderRadius ?? design * 4,
          ),
        ),
      ),
      titlePadding: title != null
          ? titlePadding ?? EdgeInsets.all(design * 16)
          : const EdgeInsets.all(0),
      title: title != null
          ? Text(
              title ?? "Title",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ProColors.textDeep,
                fontSize: titleFontSize ?? 18,
                fontWeight: FontWeight.w600,
              ),
            )
          : const SizedBox.shrink(),
      content: ProCard(
        width: width,
        height: height,
        padding: const EdgeInsets.all(0),
        customBorderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(alertBorderRadius ?? design * 4),
          bottomRight: Radius.circular(alertBorderRadius ?? design * 4),
        ),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: title != null
                  ? contentPadding ??
                      EdgeInsets.only(
                        top: 0,
                        left: design * 16,
                        right: design * 16,
                        bottom: design * 18,
                      )
                  : EdgeInsets.all(design * 16),
              child: Text(
                message ?? "Write your message here.",
                style: TextStyle(
                  color: ProColors.navyDeep,
                  fontSize: messageFontSize ?? 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.black12,
            ),
            SizedBox(
              height: buttonsHeight ?? design * 40,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: button1Function as void Function()?,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: design * 10),
                        height: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          button1Text ?? "Button 1",
                          style: TextStyle(
                            color: ProColors.navyDeep,
                            fontSize: button1FontSize ?? 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  button2Text != null
                      ? Container(
                          height: double.infinity,
                          width: 1,
                          color: Colors.black12,
                        )
                      : const SizedBox.shrink(),
                  button2Text != null
                      ? Expanded(
                          child: InkWell(
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: button2Function as void Function()?,
                            child: Container(
                              padding:
                                  EdgeInsets.symmetric(horizontal: design * 10),
                              height: double.infinity,
                              alignment: Alignment.center,
                              child: Text(
                                button2Text ?? "Button 2",
                                style: TextStyle(
                                  color: ProColors.navyDeep,
                                  fontSize: button2FontSize ?? 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
