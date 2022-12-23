import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_widgets/colors.dart';
import 'package:pro_widgets/pro_widgets.dart';

import '../../responsiveness/responsive.dart';

class ProTextField extends StatelessWidget {
  final double? height;
  final double? width;

  final double? contentPaddingLeft;
  final double? contentPaddingRight;

  /// Pass index number if you need it on tap using [ getIndex ] function
  ///
  /// The pupose of index number is to help you when there are for example multi-user based text input fields and you need to know which one tapped. So, for this kind of index based situation you can use it if needed.
  ///
  /// Code Example :
  /// ```dart
  /// ProTextField(
  ///   index: 1,
  ///   getIndex: (index) {
  ///     print(index);
  ///   },
  ///  )
  /// ```
  final int? index;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlignment;
  final FontWeight? fontWeight;
  final String? hint;
  final double? hintFontSize;
  final FontWeight? hintFontWeight;
  final Color? hintColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final bool? enableShadow;
  final Color? shadowColor;
  final Offset? shadowOffset;
  final double? shadowBlurRadius;
  final double? shadowSpreadRadius;
  final double? borderRadius;
  final Widget? prefix;
  final Widget? suffix;
  final bool? obsecureText;
  final bool? readOnly;

  /// Use this parameter to listen for the changes on every key press.
  ///
  /// Example :
  /// ```dart
  /// ProTextField(
  /// onChanged: (text) {
  ///     print(text);
  ///   },
  /// )
  /// ```
  final ValueChanged<dynamic>? onChanged;
  final ValueChanged<dynamic>? onSubmitted;
  final Function? onTap;
  final Function? onEditingComplete;

  /// Called when the user taps on the text input field and it returns the index value you passed in the widget.
  ///
  /// The pupose of this function is to help you when there are for example multi-user based text input fields and you need to know which one tapped. So, for this kind of index based situation you can use it if needed.
  ///
  /// Code Example :
  /// ```dart
  /// ProTextField(
  ///   index: 1,
  ///   getIndex: (index) {
  ///     print(index);
  ///   },
  ///  )
  /// ```
  final ValueChanged<int?>? getIndex;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final List<TextInputFormatter>? textInputFormatters;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;

  const ProTextField({
    super.key,
    this.height,
    this.width,
    this.contentPaddingLeft,
    this.contentPaddingRight,
    this.index,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textAlignment,
    this.hint,
    this.hintColor,
    this.hintFontSize,
    this.hintFontWeight,
    this.obsecureText,
    this.readOnly,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.enableShadow,
    this.shadowColor,
    this.shadowOffset,
    this.shadowBlurRadius,
    this.shadowSpreadRadius,
    this.prefix,
    this.suffix,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onSubmitted,
    this.getIndex,
    this.controller,
    this.focusNode,
    this.textInputFormatters,
    this.textInputType,
    this.textInputAction,
  });
  @override
  Widget build(BuildContext context) {
    double design = doNotUseThisDesignValue(context: context);
    return Container(
      height: height ?? design * 45,
      width: width,
      decoration: proBoxDecoration(
        enableShadow: enableShadow,
        borderRadius: borderRadius ?? design * 4,
        borderColor: borderColor ?? ProColors.border,
        borderWidth: borderWidth ?? design * 1,
        backgroundColor: backgroundColor ?? ProColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          prefix ?? const SizedBox.shrink(),
          Expanded(
            child: TextField(
              onTap: () {
                if (getIndex != null) {
                  getIndex!(index);
                }
                if (onTap != null) {
                  onTap!();
                }
              },
              onChanged: (dynamic text) {
                if (onChanged != null) {
                  onChanged!(text);
                }
              },
              controller: controller,
              onSubmitted: (String text) {
                if (onSubmitted != null) {
                  onSubmitted!(text);
                }
              },
              onEditingComplete: () {
                if (onEditingComplete != null) {
                  onEditingComplete!();
                }
              },
              textInputAction: textInputAction ?? TextInputAction.next,
              readOnly: readOnly ?? false,
              focusNode: focusNode,
              inputFormatters: textInputFormatters,
              keyboardType: textInputType,
              obscureText: obsecureText ?? false,
              style: TextStyle(
                fontSize: fontSize ?? 16,
                fontWeight: fontWeight ?? FontWeight.normal,
                color: textColor ?? ProColors.textDeep,
              ),
              textAlign: textAlignment ?? TextAlign.start,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: contentPaddingLeft ?? design * 8,
                  right: contentPaddingRight ?? design * 8,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  borderSide: BorderSide(
                    width: 0,
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  borderSide: BorderSide(
                    width: 0,
                    color: Colors.transparent,
                  ),
                ),
                filled: false,
                hintText: hint ?? "Hint Text",
                hintStyle: TextStyle(
                  color: hintColor ?? ProColors.textLight,
                  fontSize: hintFontSize ?? 14,
                  fontWeight: hintFontWeight ?? FontWeight.w500,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          prefix ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
