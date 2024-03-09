import 'package:flutter/material.dart';

class CText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final TextDecoration? textDecoration;

  const CText(
    this.text, {
    super.key,
    this.fontWeight,
    this.fontSize,
    this.color,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        decoration: textDecoration
      ),
    );
  }
}
