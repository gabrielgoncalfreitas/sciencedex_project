import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/app.styles.dart';
import 'package:sciencedex_project/core/home_page.core.dart';
import 'package:sciencedex_project/presenters/home/widgets/home_page_periodo_list_item_widget.dart';
import 'package:sciencedex_project/shared/widgets/custom_button.dart';
import 'package:sciencedex_project/shared/widgets/custom_text.dart';

class HomePagePeriodoListWidget extends StatelessWidget {
  final HomePageCore core;

  const HomePagePeriodoListWidget({
    super.key,
    required this.core,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = core.homePageStore.periodosList.isEmpty
        ? const Center(child: CText("Não há períodos cadastrados"))
        : ListView.builder(
            itemCount: core.homePageStore.periodosList.length,
            itemBuilder: (context, index) {
              return HomePagePeriodoListItemWidget(
                index: index,
                periodo: core.homePageStore.periodosList[index],
                abrirEditarPeriodo: ({required context, required periodo}) {
                  core.controller.abrirEditarPeriodo(
                    periodoEntity: periodo,
                    context: context,
                    index: index,
                  );
                },
              );
            });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: CText("Períodos", fontWeight: FontWeight.w600, fontSize: 16),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 17, bottom: 17),
          height: AppStyles.listContainerHeight(context),
          decoration: BoxDecoration(color: AppColors.lightGrayColor, borderRadius: BorderRadius.circular(15)),
          child: core.homePageStore.loading
              ? const Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator()
                  ],
                )
              : content,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 14, bottom: 68),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CButton(
                onPressed: core.controller.abrirAdicionarPeriodo,
                backgroundColor: AppColors.primaryColor,
                padding: AppStyles.buttonsPadding,
                child: const CText('Adicionar Período', fontSize: 12, color: AppColors.whiteColor),
              )
            ],
          ),
        )
      ],
    );
  }
}
