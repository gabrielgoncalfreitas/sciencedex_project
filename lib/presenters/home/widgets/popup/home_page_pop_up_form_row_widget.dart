import 'package:flutter/material.dart';
import 'package:sciencedex_project/app/app.styles.dart';
import 'package:sciencedex_project/shared/widgets/custom_text.dart';

class HomePagePopUpFormRowWidget extends StatelessWidget {
  final String label;
  final String? hintText;
  final BoxConstraints? boxConstraints;
  final TextAlign textAlign;
  final Widget child;

  const HomePagePopUpFormRowWidget({
    super.key,
    required this.label,
    this.hintText,
    this.boxConstraints,
    this.textAlign = TextAlign.start,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CText(
          label,
          fontSize: AppStyles.calculateFontSize(
            context: context,
            currentSize: 12,
          ),
        ),
        Container(
          constraints: boxConstraints,
          child: child,
        ),
      ],
    );
  }
}
