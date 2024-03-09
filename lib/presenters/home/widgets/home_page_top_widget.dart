import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/presenters/home/widgets/home_page_text_field_widget.dart';
import 'package:sciencedex_project/widgets/custom_text.dart';

class HomePageTopWidget extends StatelessWidget {
  const HomePageTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 200,
        child: HomePageTextFieldWidget(),
        ),
        InkWell(
          child: Container(
            width: 142,
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 6,
              bottom: 6,
            ),
            height: 61,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: AppColors.lightGrayColor,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(image: AssetImage("lib/assets/img/user.png"), width: 48, height: 48),
                CText("Editar Foto", fontWeight: FontWeight.w600, fontSize: 11)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
