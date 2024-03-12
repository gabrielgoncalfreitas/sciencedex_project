import 'package:flutter/material.dart';

class CTextField extends StatelessWidget {
  final String? label;
  final int? maxLength;
  final bool enabled;
  final String? value;
  final String? hintText;
  final TextStyle? hintStyle;
  final bool readOnly;
  final bool isDense;
  final EdgeInsets? contentPadding;
  final BorderSide enabledBorder;
  final BorderSide focusedBorder;
  final BorderSide errorBorder;
  final Color? backgroundColor;
  final Color? focusBackgroundColor;
  final bool filled;
  final TextStyle textStyle;
  final double radius;
  final TextAlign textAlign;
  final Function(String value) onChanged;
  final Function(BuildContext context)? onTap;

  const CTextField({
    super.key,
    this.label,
    this.enabled = true,
    this.value,
    this.hintText,
    this.readOnly = false,
    this.isDense = true,
    this.contentPadding,
    this.enabledBorder = const BorderSide(),
    this.focusedBorder = const BorderSide(),
    this.errorBorder = const BorderSide(),
    this.backgroundColor,
    this.focusBackgroundColor,
    this.filled = true,
    this.textStyle = const TextStyle(),
    this.hintStyle = const TextStyle(),
    this.radius = 5,
    this.textAlign = TextAlign.start,
    required this.onChanged,
    this.maxLength,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.all(
      Radius.circular(radius),
    );

    return TextFormField(
      textAlign: textAlign,
      decoration: InputDecoration(
        label: label == null ? null : Text(label!),
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: enabledBorder,
          borderRadius: borderRadius,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: focusedBorder,
          borderRadius: borderRadius,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: errorBorder,
          borderRadius: borderRadius,
        ),
        enabled: enabled,
        hintText: hintText,
        hintStyle: hintStyle,
        contentPadding: contentPadding,
        fillColor: backgroundColor,
        focusColor: focusBackgroundColor,
        filled: filled,
        isDense: isDense,
      ),
      maxLength: maxLength,
      style: textStyle,
      controller: TextEditingController(text: value),
      readOnly: readOnly,
      onChanged: (value) => onChanged(value),
      onTap: onTap == null ? null : () => onTap!(context),
    );
  }
}
