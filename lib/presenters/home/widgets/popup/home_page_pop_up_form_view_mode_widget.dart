import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/app.styles.dart';
import 'package:sciencedex_project/core/utils/datetime_to_locale.dart';
import 'package:sciencedex_project/presenters/home/controllers/home_page.controller.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page_pop_up.store.dart';
import 'package:sciencedex_project/presenters/home/widgets/home_page_divider_widget.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_form_dropdown_row_widget.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_form_text_field_row_widget.dart';
import 'package:sciencedex_project/shared/widgets/custom_text_field.dart';

class HomePagePopUpFormViewModeWidget extends StatelessWidget {
  final HomePageController homePageController;
  final HomePagePopUpStore popUpStore;

  const HomePagePopUpFormViewModeWidget({
    super.key,
    required this.homePageController,
    required this.popUpStore,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: CTextField(
          hintText: "Nomeie seu período",
          contentPadding: AppStyles.getNomeDoPeriodoTextFieldPadding(context),
          enabledBorder: const BorderSide(color: AppColors.none),
          focusedBorder: const BorderSide(color: AppColors.none),
          backgroundColor: AppColors.lightGrayColor,
          focusBackgroundColor: AppColors.lightGrayColor,
          hintStyle: const TextStyle(color: AppColors.mediumGrayColor),
          textStyle: TextStyle(
            fontSize: AppStyles.calculateFontSize(
              context: context,
              currentSize: 12,
            ),
          ),
          value: popUpStore.periodosEntity.nomeDoPeriodo,
          onChanged: (value) {},
          readOnly: true,
        ),
      ),
      Container(
        color: AppColors.none,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              HomePagePopUpFormTextFieldRowWidget(
                boxConstraints: AppStyles.getTextFieldsConstraints(context),
                label: "Começa",
                value: dateTimeToDetailed(popUpStore.periodosEntity.comeca),
                onChanged: (value) {},
                readOnly: true,
                enabledBorderColor: AppColors.none,
                focusedBorderColor: AppColors.none,
              ),
              const HomePageDividerWidget(topPadding: 7, bottomPadding: 7, thickness: 1),
              HomePagePopUpFormTextFieldRowWidget(
                boxConstraints: AppStyles.getTextFieldsConstraints(context),
                label: "Termina",
                value: dateTimeToDetailed(popUpStore.periodosEntity.termina),
                onChanged: (value) {},
                readOnly: true,
                enabledBorderColor: AppColors.none,
                focusedBorderColor: AppColors.none,
              ),
              const HomePageDividerWidget(topPadding: 7, bottomPadding: 7, thickness: 1),
              HomePagePopUpFormDropdownRowWidget(
                boxConstraints: AppStyles.getTextFieldsConstraints(context),
                label: "Categoria",
                value: popUpStore.periodosEntity.categoria,
                dropdownList: popUpStore.dropdownList,
                onChanged: (value) {},
                borderColor: AppColors.none,
                readOnly: true,
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
                textAlign: TextAlign.center,
                value: popUpStore.periodosEntity.meta1,
                onChanged: (value) {},
                enabledBorderColor: AppColors.none,
                focusedBorderColor: AppColors.none,
                readOnly: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9),
              child: HomePagePopUpFormTextFieldRowWidget(
                label: "Meta 2",
                boxConstraints: const BoxConstraints(maxWidth: 64, maxHeight: 29),
                textAlign: TextAlign.center,
                value: popUpStore.periodosEntity.meta2,
                onChanged: (value) {},
                enabledBorderColor: AppColors.none,
                focusedBorderColor: AppColors.none,
                readOnly: true,
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
