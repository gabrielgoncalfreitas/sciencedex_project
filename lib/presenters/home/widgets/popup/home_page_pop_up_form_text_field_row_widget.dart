import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_form_row_widget.dart';
import 'package:sciencedex_project/shared/widgets/custom_text_field.dart';

class HomePagePopUpFormTextFieldRowWidget extends StatelessWidget {
  final String label;
  final String value;
  final String? hintText;
  final BoxConstraints boxConstraints;
  final TextAlign textAlign;
  final Function(String value) onChanged;
  final Function(BuildContext context)? onTap;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final bool readOnly;
  final EdgeInsets? contentPadding;

  const HomePagePopUpFormTextFieldRowWidget({
    super.key,
    required this.label,
    this.hintText,
    this.boxConstraints = const BoxConstraints(
      maxWidth: 103,
      maxHeight: 29,
    ),
    this.textAlign = TextAlign.start,
    required this.value,
    required this.onChanged,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.readOnly = false,
    this.contentPadding,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return HomePagePopUpFormRowWidget(
      label: label,
      boxConstraints: boxConstraints,
      hintText: hintText,
      textAlign: textAlign,
      child: CTextField(
        contentPadding: contentPadding ?? const EdgeInsets.only(left: 8, right: 8, top: 9.5, bottom: 7.5),
        enabledBorder: BorderSide(color: enabledBorderColor ?? AppColors.secondaryColor),
        focusedBorder: BorderSide(color: focusedBorderColor ?? AppColors.secondaryColor),
        radius: 8,
        hintText: hintText,
        backgroundColor: AppColors.whiteColor,
        focusBackgroundColor: AppColors.lightGrayColor,
        hintStyle: const TextStyle(color: AppColors.tertiaryColor),
        textStyle: const TextStyle(fontSize: 10),
        textAlign: textAlign,
        value: value,
        onChanged: onChanged,
        readOnly: readOnly,
        onTap: onTap,
      ),
    );
  }
}
