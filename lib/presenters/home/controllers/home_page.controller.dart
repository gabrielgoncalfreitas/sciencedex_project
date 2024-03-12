import 'package:flutter/material.dart';
import 'package:sciencedex_project/core/entities/periodo.entity.dart';
import 'package:sciencedex_project/core/local_storage/local_storage.dart';
import 'package:sciencedex_project/core/utils/navigate.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page.store.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page_pop_up.store.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_widget.dart';

class HomePageController {
  HomePageStore homePageStore;
  HomePagePopUpStore popUpStore;
  final LocalStorage localStorage = LocalStorage();

  HomePageController({
    required this.homePageStore,
    required this.popUpStore,
  });

  abrirPopUp(BuildContext context) async {
    await _showMyDialog(context);
  }

  Future _showMyDialog(context) async {
    return showDialog(
      context: context,
      barrierDismissible: true,
      useSafeArea: true,
      builder: (BuildContext context) => HomePagePopUpWidget(
        homePageController: this,
        popUpStore: popUpStore,
      ),
    );
  }

  adicionarPeriodo(BuildContext context) async {
    final currentPeriodosEntity = popUpStore.periodosEntity.toMap();

    List<dynamic>? fields = await localStorage.get("periodos");

    if (fields != null) {
      fields.add(currentPeriodosEntity);
      await localStorage.set("periodos", fields);
    } else {
      await localStorage.set("periodos", [
        currentPeriodosEntity
      ]);
    }

    // ignore: use_build_context_synchronously
    Navigate(context).pop();

    clearAlertFormFields();

    remountHomePageList();
  }

  clearAlertFormFields() {
    popUpStore.setPeriodosFields(PeriodoEntity.init());
  }

  remountHomePageList() {
    homePageStore.setPeriodosListState();
  }

  onChanged({
    String? nomeDoPeriodo,
    String? comeca,
    String? termina,
    String? categoria,
    String? meta1,
    String? meta2,
  }) {
    final periodosEntity = popUpStore.periodosEntity.copyWith(
      nomeDoPeriodo: nomeDoPeriodo,
      comeca: comeca,
      termina: termina,
      categoria: categoria,
      meta1: meta1,
      meta2: meta2,
    );

    popUpStore.setPeriodosFields(periodosEntity);
  }

  onDropdownChanged({
    String? categoria,
  }) {
    onChanged(categoria: categoria);

    popUpStore.notify();
  }
}
