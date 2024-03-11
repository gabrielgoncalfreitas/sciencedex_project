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
    return TextButton(
      onPressed: () => onPressed(context),
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: padding,
        backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 15),
        ),
      ),
      child: child,
    );
  }
}
