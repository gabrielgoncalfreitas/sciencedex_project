import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_form_row_widget.dart';
import 'package:sciencedex_project/shared/widgets/custom_text_field.dart';

class HomePagePopUpFormTextFieldRowWidget extends StatelessWidget {
  final String label;
  final String? hintText;
  final BoxConstraints boxConstraints;
  final TextAlign textAlign;

  const HomePagePopUpFormTextFieldRowWidget({
    super.key,
    required this.label,
    this.hintText,
    this.boxConstraints = const BoxConstraints(
      maxWidth: 103,
      maxHeight: 29,
    ),
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return HomePagePopUpFormRowWidget(
      label: label,
      boxConstraints: boxConstraints,
      hintText: hintText,
      textAlign: textAlign,
      child: CTextField(
        contentPadding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
        enabledBorder: const BorderSide(color: AppColors.secondaryColor),
        focusedBorder: const BorderSide(color: AppColors.secondaryColor),
        radius: 8,
        hintText: hintText,
        backgroundColor: AppColors.whiteColor,
        focusBackgroundColor: AppColors.lightGrayColor,
        hintStyle: const TextStyle(color: AppColors.tertiaryColor),
        textStyle: const TextStyle(fontSize: 12),
        textAlign: textAlign,
      ),
    );
  }
}
