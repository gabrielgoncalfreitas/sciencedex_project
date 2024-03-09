import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/widgets/custom_text.dart';

class HomePagePeriodoListItemWidget extends StatelessWidget {
  const HomePagePeriodoListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColors.secondaryColor),
              borderRadius: BorderRadius.circular(5),
            ),
            height: 42,
            alignment: Alignment.center,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CText("Super Feirão", fontWeight: FontWeight.w600),
                CText(
                  "01/08/23 a 30/03/24",
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: AppColors.grayColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
