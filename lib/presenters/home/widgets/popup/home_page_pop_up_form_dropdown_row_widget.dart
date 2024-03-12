import 'package:flutter/material.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_form_row_widget.dart';
import 'package:sciencedex_project/shared/widgets/custom_dropdown.dart';

class HomePagePopUpFormDropdownRowWidget extends StatelessWidget {
  final String label;
  final String? hintText;
  final BoxConstraints boxConstraints;
  final TextAlign textAlign;
  final String value;
  final List<String> dropdownList;
  final Function(String) onChanged;
  final Color? borderColor;
  final bool? readOnly;
  final EdgeInsets? padding;

  const HomePagePopUpFormDropdownRowWidget({
    super.key,
    required this.label,
    this.hintText,
    required this.boxConstraints,
    this.textAlign = TextAlign.start,
    required this.value,
    required this.dropdownList,
    required this.onChanged,
    this.borderColor,
    this.readOnly,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return HomePagePopUpFormRowWidget(
      label: label,
      boxConstraints: boxConstraints,
      hintText: hintText,
      textAlign: textAlign,
      child: CustomDropdown(
        padding: padding ?? const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
        value: value,
        list: dropdownList,
        onChanged: onChanged,
        borderColor: borderColor,
        readOnly: readOnly ?? false,
      ),
    );
  }
}
