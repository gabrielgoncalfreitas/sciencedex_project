import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/core/home_page.core.dart';
import 'package:sciencedex_project/presenters/home/widgets/home_page_periodo_list_item_widget.dart';
import 'package:sciencedex_project/widgets/custom_button.dart';
import 'package:sciencedex_project/widgets/custom_text.dart';

class HomePagePeriodoListWidget extends StatelessWidget {
  final HomePageCore core;

  const HomePagePeriodoListWidget({
    super.key,
    required this.core,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: CText("Períodos", fontWeight: FontWeight.w600, fontSize: 16),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          height: 378,
          decoration: BoxDecoration(
            color: AppColors.lightGrayColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListView.builder(
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => const HomePagePeriodoListItemWidget(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CButton(
                onPressed: core.controller.adicionarPeriodo,
                backgroundColor: AppColors.primaryColor,
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                child: const CText('Adicionar Período', fontSize: 10, color: AppColors.whiteColor),
              )
            ],
          ),
        )
      ],
    );
  }
}
