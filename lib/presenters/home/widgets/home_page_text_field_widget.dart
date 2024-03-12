import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/shared/widgets/custom_text.dart';

class HomePageTextFieldWidget extends StatelessWidget {
  const HomePageTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 4),
          child: CText("Apelido", fontWeight: FontWeight.w500),
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Container(
              constraints: const BoxConstraints(
                maxHeight: 47,
                minHeight: 47,
                maxWidth: 200,
                minWidth: 200,
              ),
              child: const TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  isCollapsed: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.tertiaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.secondaryColor, width: 2.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.secondaryColor, width: 2.5),
                  ),
                  contentPadding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
