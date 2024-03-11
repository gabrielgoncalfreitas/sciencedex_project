import 'package:flutter/material.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_form_row_widget.dart';
import 'package:sciencedex_project/shared/widgets/custom_dropdown.dart';

class HomePagePopUpFormDropdownRowWidget extends StatelessWidget {
  final String label;
  final String? hintText;
  final BoxConstraints boxConstraints;
  final TextAlign textAlign;

  const HomePagePopUpFormDropdownRowWidget({
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
      child: const CustomDropdown(
        padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
        value: "Categoria 1",
        list: [
          'Categoria 1',
          'Categoria 2',
          'Categoria 3',
          'Categoria 4',
          'Categoria 5',
        ],
      ),
    );
  }
}
