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
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: CTextField(
            hintText: "Nomeie seu período",
            contentPadding: const EdgeInsets.only(left: 8, right: 8, top: 0, bottom: 0),
            enabledBorder: const BorderSide(color: Color.fromRGBO(0, 0, 0, 0)),
            focusedBorder: const BorderSide(color: Color.fromRGBO(0, 0, 0, 0)),
            backgroundColor: AppColors.lightGrayColor,
            focusBackgroundColor: AppColors.lightGrayColor,
            hintStyle: const TextStyle(color: AppColors.mediumGrayColor),
            textStyle: const TextStyle(fontSize: 13),
            value: popUpStore.periodosEntity.nomeDoPeriodo,
            onChanged: (value) => homePageController.onChanged(nomeDoPeriodo: value),
          ),
        ),
        Container(
          color: AppColors.lightGrayColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                HomePagePopUpFormTextFieldRowWidget(
                  label: "Começa",
                  value: popUpStore.periodosEntity.comeca.toString(),
                  onChanged: (value) => homePageController.onChanged(comeca: value),
                ),
                const HomePageDividerWidget(topPadding: 7, bottomPadding: 7, thickness: 1),
                HomePagePopUpFormTextFieldRowWidget(
                  label: "Termina",
                  value: popUpStore.periodosEntity.termina.toString(),
                  onChanged: (value) => homePageController.onChanged(termina: value),
                ),
                const HomePageDividerWidget(topPadding: 7, bottomPadding: 7, thickness: 1),
                HomePagePopUpFormDropdownRowWidget(
                  label: "Categoria",
                  value: popUpStore.periodosEntity.categoria,
                  dropdownList: popUpStore.dropdownList,
                  onChanged: (value) => homePageController.onDropdownChanged(categoria: value),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 9),
                child: HomePagePopUpFormTextFieldRowWidget(
                  label: "Meta 1",
                  boxConstraints: const BoxConstraints(maxWidth: 64, maxHeight: 29),
                  hintText: "Un",
                  textAlign: TextAlign.center,
                  value: popUpStore.periodosEntity.meta1,
                  onChanged: (value) => homePageController.onChanged(meta1: value),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: HomePagePopUpFormTextFieldRowWidget(
                  label: "Meta 2",
                  boxConstraints: const BoxConstraints(maxWidth: 64, maxHeight: 29),
                  hintText: "Un",
                  textAlign: TextAlign.center,
                  value: popUpStore.periodosEntity.meta2,
                  onChanged: (value) => homePageController.onChanged(meta2: value),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: CButton(
            backgroundColor: AppColors.primaryColor,
            onPressed: (context) => homePageController.adicionarPeriodo(context),
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
