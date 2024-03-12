import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/presenters/home/controllers/home_page.controller.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page_pop_up.store.dart';
import 'package:sciencedex_project/shared/widgets/custom_button.dart';
import 'package:sciencedex_project/shared/widgets/custom_text.dart';

class HomePagePopUpFormActionsWidget extends StatelessWidget {
  final int index;
  final HomePageController homePageController;
  final HomePagePopUpStore popUpStore;

  const HomePagePopUpFormActionsWidget({
    super.key,
    required this.index,
    required this.homePageController,
    required this.popUpStore,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: popUpStore.crudMode,
            child: const Spacer(),
          ),
          Visibility(
            visible: popUpStore.crudMode,
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
          Visibility(
            visible: !popUpStore.crudMode,
            child: CButton(
              backgroundColor: AppColors.dangerColor,
              onPressed: (context) => homePageController.excluirPeriodo(context: context, index: index),
              borderRadius: 20,
              padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
              child: const CText(
                'Excluir',
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
          const Spacer(),
          Visibility(
            visible: !popUpStore.crudMode && !popUpStore.editMode,
            child: CButton(
              backgroundColor: AppColors.primaryColor,
              onPressed: (context) => homePageController.toggleEditMode(null),
              borderRadius: 20,
              padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
              child: const CText(
                'Editar',
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
          Visibility(
            visible: popUpStore.editMode,
            child: CButton(
              backgroundColor: AppColors.primaryColor,
              onPressed: (context) => homePageController.atualizarPeriodo(
                index: index,
                periodoEntity: popUpStore.periodosEntity,
                context: context,
              ),
              borderRadius: 20,
              padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
              child: const CText(
                'Finalizar',
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
