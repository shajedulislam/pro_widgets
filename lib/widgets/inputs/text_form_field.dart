import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_widgets/colors.dart';

import '../box_decoration.dart';

class ProTextFormField extends StatelessWidget {
  final int? index;
  final double? width;
  final double? height;
  final TextEditingController? controller;
  final Color? fontColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? label;
  final Color? labelFontColor;
  final double? labelFontSize;
  final FontWeight? labelFontWeight;
  final String? hint;
  final Color? hintColor;
  final double? hintFontSize;
  final FontWeight? hintFontWeight;
  final Color? errorFontColor;
  final double? errorFontSize;
  final FontWeight? errorFontWeight;
  final Color? borderColor;
  final double? borderWidth;
  final double? borderRadius;
  final double? paddingHorizontal;
  final double? paddingVertical;
  final Color? backgroundColor;
  final bool? enableShadow;
  final FormFieldValidator<dynamic>? validator;

  /// Use this parameter to listen on change/key press.
  ///
  /// Example :
  /// ```dart
  /// ProTextFormField(
  /// onChanged: (text) {
  ///     print(text);
  ///   },
  /// )
  /// ```
  final ValueChanged<dynamic>? onChanged;

  /// Called when the user taps on the text input field and it returns the index value you passed in the widget.
  ///
  /// The pupose of this function is to help you when there are for example multi-user based text input fields and you need to know which one tapped. So, for this kind of index based situation you can use it if needed.
  ///
  /// Code Example :
  /// ```dart
  /// UdBasicTextInputField(
  ///   index: 1,
  ///   getIndex: (index) {
  ///     print(index);
  ///   },
  ///  )
  /// ```
  final ValueChanged<int?>? getIndex;
  final Widget? prefix;
  final Size? prefixSize;
  final Widget? suffix;
  final Size? suffixSize;
  final String? initialValue;
  final bool? obsecureText;
  final TextInputType keyboardType;
  final bool enabled;
  final int maxLines;
  final VoidCallback? onTap;
  final AutovalidateMode autovalidateMode;
  final void Function(String?)? onSaved;
  final TextInputAction? textInputAction;
  final bool? readOnly;
  final List<TextInputFormatter>? textInputFormatters;
  final TextInputType? textInputType;

  /// ProTextFormField wrapped the TextFormField widget and now its more easier to use.
  const ProTextFormField({
    Key? key,
    this.index,
    this.width,
    this.height,
    this.controller,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
    this.label,
    this.labelFontColor,
    this.labelFontSize,
    this.labelFontWeight,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.paddingHorizontal,
    this.paddingVertical,
    this.backgroundColor,
    this.enableShadow,
    this.hint,
    this.hintColor,
    this.hintFontSize,
    this.hintFontWeight,
    this.errorFontColor,
    this.onSaved,
    this.errorFontSize,
    this.errorFontWeight,
    this.validator,
    this.onChanged,
    this.getIndex,
    this.prefix,
    this.prefixSize,
    this.suffix,
    this.suffixSize,
    this.initialValue,
    this.keyboardType = TextInputType.text,
    this.enabled = true,
    this.maxLines = 1,
    this.onTap,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.textInputAction,
    this.readOnly,
    this.textInputFormatters,
    this.textInputType,
    this.obsecureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label != null
            ? _formFieldLabel(
                label: label ?? "Label",
                fontColor: labelFontColor ?? ProColors.textDeep,
                fontSize: labelFontSize ?? 12,
                fontWeight: labelFontWeight ?? FontWeight.w500,
              )
            : const SizedBox.shrink(),
        Container(
          width: width,
          height: height ?? 45,
          decoration: proBoxDecoration(
            enableShadow: enableShadow,
            borderRadius: borderRadius,
            borderWidth: 0,
            backgroundColor: Colors.transparent,
          ),
          child: TextFormField(
            key: key,
            controller: controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal ?? 0,
                vertical: paddingVertical ?? 0,
              ),
              filled: true,
              fillColor: Colors.white,
              border: _prepareBorder(
                borderRadius: borderRadius ?? 4,
                color: borderColor ?? ProColors.border,
                borderWidth: borderWidth ?? 1,
              ),
              focusedBorder: _prepareBorder(
                borderRadius: borderRadius ?? 4,
                color: borderColor ?? ProColors.border,
                borderWidth: borderWidth ?? 1,
              ),
              disabledBorder: _prepareBorder(
                borderRadius: borderRadius ?? 4,
                color: borderColor ?? ProColors.border,
                borderWidth: borderWidth ?? 1,
              ),
              enabledBorder: _prepareBorder(
                borderRadius: borderRadius ?? 4,
                color: borderColor ?? ProColors.border,
                borderWidth: borderWidth ?? 1,
              ),
              errorBorder: _prepareBorder(
                borderRadius: borderRadius ?? 4,
                color: borderColor ?? ProColors.border,
                borderWidth: borderWidth ?? 1,
              ),
              focusedErrorBorder: _prepareBorder(
                borderRadius: borderRadius ?? 4,
                color: borderColor ?? ProColors.border,
                borderWidth: borderWidth ?? 1,
              ),
              hintText: hint ?? "Hint Text",
              hintStyle: TextStyle(
                color: hintColor ?? ProColors.textLight,
                fontSize: hintFontSize ?? 14,
                fontWeight: hintFontWeight ?? FontWeight.w500,
                overflow: TextOverflow.ellipsis,
              ),
              hintMaxLines: 2,
              errorStyle: TextStyle(
                fontSize: errorFontSize ?? 10,
                color: errorFontColor ?? Colors.red,
                fontWeight: errorFontWeight ?? FontWeight.w400,
                overflow: TextOverflow.ellipsis,
              ),
              errorMaxLines: 2,
              prefixIcon: prefix ?? const SizedBox.shrink(),
              prefixIconConstraints: BoxConstraints(
                minWidth: prefixSize?.width ?? 10,
                minHeight: prefixSize?.height ?? 10,
              ),
              suffixIcon: suffix ?? const SizedBox.shrink(),
              suffixIconConstraints: BoxConstraints(
                minWidth: suffixSize?.width ?? 1,
                minHeight: suffixSize?.height ?? 1,
              ),
              enabled: enabled,
            ),
            style: TextStyle(
              color: fontColor ?? ProColors.textDeep,
              fontSize: fontSize ?? 14,
              fontWeight: fontWeight ?? FontWeight.w500,
            ),
            textInputAction: textInputAction ?? TextInputAction.next,
            readOnly: readOnly ?? false,
            inputFormatters: textInputFormatters,
            keyboardType: textInputType,
            obscureText: obsecureText ?? false,
            maxLines: maxLines,
            validator: validator,
            onSaved: onSaved,
            onChanged: (dynamic text) {
              if (onChanged != null) {
                onChanged!(text);
              }
            },
            initialValue: initialValue,
            autovalidateMode: autovalidateMode,
            onTap: () {
              if (getIndex != null) {
                getIndex!(index);
              }
              if (onTap != null) {
                onTap!();
              }
            },
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _prepareBorder({
    required Color color,
    required double borderRadius,
    required double borderWidth,
  }) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: borderWidth,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(borderRadius),
      ),
    );
  }

  Widget _formFieldLabel({
    required String label,
    required double fontSize,
    required Color fontColor,
    required FontWeight fontWeight,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize,
          color: fontColor,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
