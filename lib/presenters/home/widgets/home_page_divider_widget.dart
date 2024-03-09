import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';

class HomePageDividerWidget extends StatelessWidget {
  const HomePageDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 2,
      margin: const EdgeInsets.only(top: 22, bottom: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppColors.tertiaryColor,
      ),
    );
  }
}
