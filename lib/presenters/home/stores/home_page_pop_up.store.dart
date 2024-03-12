import 'package:flutter/material.dart';
import 'package:sciencedex_project/core/entities/periodo.entity.dart';

class HomePagePopUpStore extends ChangeNotifier {
  PeriodoEntity periodosEntity = PeriodoEntity.init();
  List<String> dropdownList = [
    'Categoria 1',
    'Categoria 2',
    'Categoria 3',
    'Categoria 4',
    'Categoria 5',
  ];

  HomePagePopUpStore();

  void setPeriodosFields(PeriodoEntity periodosEntity) {
    this.periodosEntity = periodosEntity;
  }

  void notify() {
    notifyListeners();
  }
}
