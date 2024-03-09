import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/shared/widgets/custom_text.dart';

class HomePageTextFieldWidget extends StatelessWidget {
  const HomePageTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 4),
          child: CText("Apelido", fontWeight: FontWeight.w500),
        ),
        TextField(
          style: TextStyle(fontSize: 16),
          decoration: InputDecoration(
            isCollapsed: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.tertiaryColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.secondaryColor, width: 2.5),
            ),
            contentPadding: EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
          ),
        )
      ],
    );
  }
}
