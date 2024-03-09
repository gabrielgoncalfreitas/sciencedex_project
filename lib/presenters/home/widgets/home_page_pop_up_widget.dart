import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/utils/navigate.dart';
import 'package:sciencedex_project/widgets/custom_button.dart';
import 'package:sciencedex_project/widgets/custom_text.dart';

class HomePagePopUpWidget extends StatelessWidget {
  const HomePagePopUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Transform.translate(
                  offset: const Offset(22.5, 0),
                  child: const CText(
                    "Novo período",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Transform.translate(
                  offset: const Offset(15, 0),
                  child: IconButton(
                    onPressed: () => Navigate(context).pop(),
                    icon: const Icon(
                      Icons.close_rounded,
                      color: AppColors.tertiaryColor,
                    ),
                  ),
                ),
              ],
            ),
            Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: const Text("Olá"),
                )
              ],
            )
          ],
        ),
      ),
      actions: <Widget>[
        Center(
          child: CButton(
            backgroundColor: AppColors.primaryColor,
            onPressed: (context) => Navigate(context).pop(),
            borderRadius: 20,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
            child: const CText(
              'Concluir',
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
