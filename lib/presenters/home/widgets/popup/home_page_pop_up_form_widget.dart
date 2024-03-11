import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/presenters/home/controllers/home_page.controller.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page_pop_up.store.dart';
import 'package:sciencedex_project/presenters/home/widgets/home_page_divider_widget.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_form_dropdown_row_widget.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_form_text_field_row_widget.dart';
import 'package:sciencedex_project/shared/widgets/custom_button.dart';
import 'package:sciencedex_project/shared/widgets/custom_text.dart';
import 'package:sciencedex_project/shared/widgets/custom_text_field.dart';

class HomePagePopUpFormWidget extends StatelessWidget {
  final HomePageController homePageController;
  final HomePagePopUpStore popUpStore;

  const HomePagePopUpFormWidget({
    super.key,
    required this.homePageController,
    required this.popUpStore,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: CTextField(
            hintText: "Nomeie seu período",
            contentPadding: EdgeInsets.only(left: 8, right: 8, top: 0, bottom: 0),
            enabledBorder: BorderSide(color: Color.fromRGBO(0, 0, 0, 0)),
            focusedBorder: BorderSide(color: Color.fromRGBO(0, 0, 0, 0)),
            backgroundColor: AppColors.lightGrayColor,
            focusBackgroundColor: AppColors.lightGrayColor,
            hintStyle: TextStyle(color: AppColors.mediumGrayColor),
            textStyle: TextStyle(fontSize: 13),
          ),
        ),
        Container(
          color: AppColors.lightGrayColor,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                HomePagePopUpFormTextFieldRowWidget(label: "Começa"),
                HomePageDividerWidget(topPadding: 7, bottomPadding: 7, thickness: 1),
                HomePagePopUpFormTextFieldRowWidget(label: "Termina"),
                HomePageDividerWidget(topPadding: 7, bottomPadding: 7, thickness: 1),
                HomePagePopUpFormDropdownRowWidget(label: "Categoria"),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 9),
                child: HomePagePopUpFormTextFieldRowWidget(
                  label: "Meta 1",
                  boxConstraints: BoxConstraints(maxWidth: 64, maxHeight: 29),
                  hintText: "Un",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 9),
                child: HomePagePopUpFormTextFieldRowWidget(
                  label: "Meta 2",
                  boxConstraints: BoxConstraints(maxWidth: 64, maxHeight: 29),
                  hintText: "Un",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Center(
          child: CButton(
            backgroundColor: AppColors.primaryColor,
            onPressed: (context) => homePageController.adicionarPeriodo(),
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
