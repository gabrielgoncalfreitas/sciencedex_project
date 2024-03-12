import 'package:flutter/material.dart';
import 'package:sciencedex_project/shared/widgets/custom_text.dart';

class HomePagePopUpFormRowWidget extends StatelessWidget {
  final String label;
  final String? hintText;
  final BoxConstraints boxConstraints;
  final TextAlign textAlign;
  final Widget child;

  const HomePagePopUpFormRowWidget({
    super.key,
    required this.label,
    this.hintText,
    this.boxConstraints = const BoxConstraints(
      maxWidth: 103,
      maxHeight: 29,
    ),
    this.textAlign = TextAlign.start,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CText(label, fontSize: 12),
        Container(
          constraints: boxConstraints,
          child: child,
        ),
      ],
    );
  }
}
