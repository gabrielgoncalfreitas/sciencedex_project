import 'package:flutter/material.dart';
import 'package:sciencedex_project/core/entities/periodo.entity.dart';

class HomePagePopUpStore extends ChangeNotifier {
  bool crudMode = false;
  bool editMode = false;
  PeriodoEntity periodosEntity = PeriodoEntity.initial();
  List<String> dropdownList = [
    'Categoria 1',
    'Categoria 2',
    'Categoria 3',
    'Categoria 4',
    'Categoria 5',
  ];

  HomePagePopUpStore();

  notifyThatDropdownHadChanged() => notifyListeners();
  notifyThatComecaHadChanged() => notifyListeners();
  notifyThatTerminaHadChanged() => notifyListeners();

  toggleEditMode(bool? editMode) {
    this.editMode = editMode ?? !this.editMode;
    notifyListeners();
  }

  setPeriodosFields(PeriodoEntity periodosEntity) => this.periodosEntity = periodosEntity;
  toggleCrudMode(bool crudMode) => this.crudMode = crudMode;
}
