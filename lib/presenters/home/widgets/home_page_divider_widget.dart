import 'package:flutter/material.dart';
import 'package:sciencedex_project/app/app.colors.dart';

class HomePageDividerWidget extends StatelessWidget {
  final double? topPadding;
  final double? bottomPadding;
  final double? thickness;

  const HomePageDividerWidget({
    super.key,
    this.topPadding,
    this.bottomPadding,
    this.thickness,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: thickness ?? 2,
      margin: EdgeInsets.only(
        top: topPadding ?? 22,
        bottom: bottomPadding ?? 22,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppColors.tertiaryColor,
      ),
    );
  }
}
