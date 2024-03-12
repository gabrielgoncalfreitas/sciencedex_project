import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/core/entities/periodo.entity.dart';
import 'package:sciencedex_project/core/utils/datetime_to_locale.dart';
import 'package:sciencedex_project/shared/widgets/custom_text.dart';

class HomePagePeriodoListItemWidget extends StatelessWidget {
  final int index;
  final PeriodoEntity periodo;
  final Function({
    required PeriodoEntity periodo,
    required BuildContext context,
  }) abrirEditarPeriodo;

  const HomePagePeriodoListItemWidget({
    super.key,
    required this.index,
    required this.periodo,
    required this.abrirEditarPeriodo,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        InkWell(
          onTap: () => abrirEditarPeriodo(context: context, periodo: periodo),
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColors.secondaryColor),
              borderRadius: BorderRadius.circular(5),
            ),
            height: 42,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CText(periodo.nomeDoPeriodo, fontWeight: FontWeight.w600),
                CText(
                  "${dateTimeToLocale(periodo.comeca)} a ${dateTimeToLocale(periodo.termina)}",
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: AppColors.grayColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
