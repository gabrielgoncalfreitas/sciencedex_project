import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/shared/widgets/custom_text.dart';

class HomePageBottomWidget extends StatelessWidget {
  const HomePageBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(bottom: 55),
        child: SizedBox(
          width: 105,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: AssetImage("lib/shared/assets/img/user.png"), width: 52, height: 52),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText(
                    "João",
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColors.primaryColor,
                  ),
                  CText(
                    "Sair",
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: AppColors.primaryColor,
                    textDecoration: TextDecoration.underline,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
