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

  abrirPopUp({required BuildContext context, int? index}) async => await _showMyDialog(context: context, index: index);
  clearAlertFormFields() => popUpStore.setPeriodosFields(PeriodoEntity.initial());
  remountHomePageList() => homePageStore.setPeriodosListState();
  toggleEditMode(bool? editMode) => popUpStore.toggleEditMode(editMode);

  abrirDatePicker({
    required BuildContext context,
    required DateTime initialDate,
    required Function(DateTime) onSelectDate,
  }) async {
    await _showDatePicker(
      context: context,
      initialDate: initialDate,
      onSelectDate: (date) => onSelectDate(date),
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

  atualizarPeriodo({
    required int index,
    required PeriodoEntity periodoEntity,
    required BuildContext context,
  }) async {
    List<dynamic>? fields = await localStorage.get("periodos");

    if (fields != null) {
      final currentPeriodoEntity = periodoEntity.toMap();

      fields[index] = currentPeriodoEntity;

      await localStorage.set("periodos", fields);

      popUpStore.toggleEditMode(false);

      remountHomePageList();
    }
  }

  excluirPeriodo({
    required int index,
    required BuildContext context,
  }) async {
    List<dynamic>? fields = await localStorage.get("periodos");
    if (fields != null) {
      fields.removeAt(index);

      await localStorage.set("periodos", fields);

      // ignore: use_build_context_synchronously
      Navigate(context).pop();

      remountHomePageList();
    }
  }

  abrirEditarPeriodo({
    int? index,
    required PeriodoEntity periodoEntity,
    required BuildContext context,
  }) {
    popUpStore.toggleCrudMode(false);
    popUpStore.toggleEditMode(false);
    popUpStore.setPeriodosFields(periodoEntity);

    abrirPopUp(context: context, index: index);
  }

  abrirAdicionarPeriodo(BuildContext context) {
    popUpStore.toggleCrudMode(true);
    popUpStore.toggleEditMode(false);
    popUpStore.setPeriodosFields(PeriodoEntity.initial());

    abrirPopUp(context: context);
  }

  _showMyDialog({
    required BuildContext context,
    int? index,
  }) async {
    return showDialog(
      context: context,
      barrierDismissible: true,
      useSafeArea: true,
      builder: (BuildContext context) => HomePagePopUpWidget(
        homePageController: this,
        popUpStore: popUpStore,
        index: index ?? 0,
      ),
    );
  }

  _showDatePicker({
    required BuildContext context,
    required Function(DateTime) onSelectDate,
    DateTime? initialDate,
  }) async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    );

    if (date != null) {
      onSelectDate(date);
    }
  }

  onChanged({
    String? nomeDoPeriodo,
    String? formattedComeca,
    String? formattedTermina,
    DateTime? comeca,
    DateTime? termina,
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

  onDropdownChanged({String? categoria}) {
    onChanged(categoria: categoria);

    popUpStore.notifyThatDropdownHadChanged();
  }

  onComecaChanged(DateTime comeca) {
    onChanged(comeca: comeca);

    popUpStore.notifyThatComecaHadChanged();
  }

  onTerminaChanged(DateTime termina) {
    onChanged(termina: termina);

    popUpStore.notifyThatTerminaHadChanged();
  }
}
