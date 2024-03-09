import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final void Function(BuildContext) onPressed;
  final Widget child;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final double? borderRadius;

  const CButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.backgroundColor,
    this.padding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(context),
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 15),
        ),
        child: child,
      ),
    );
  }
}
