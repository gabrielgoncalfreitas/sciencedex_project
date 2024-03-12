import 'package:flutter/material.dart';
import 'package:sciencedex_project/core/entities/periodo.entity.dart';
import 'package:sciencedex_project/core/local_storage/local_storage.dart';

class HomePageStore extends ChangeNotifier {
  String _name = "gabriel";
  List<PeriodoEntity> periodosList = [];

  HomePageStore() {
    setPeriodosListState();
  }

  void setName(String name) {
    _name = name;

    notifyListeners();
  }

  String getName() => _name;

  void setPeriodosListState() async {
    LocalStorage localStorage = LocalStorage();

    List<dynamic>? periodos = await localStorage.get("periodos");

    if (periodos != null) {
      List<PeriodoEntity> list = [];

      for (var element in periodos) {
        list.add(PeriodoEntity.fromMap(element));
      }

      periodosList = list;

      notifyListeners();
    }
  }
}
