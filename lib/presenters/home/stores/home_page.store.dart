import 'package:flutter/material.dart';
import 'package:sciencedex_project/core/entities/periodo.entity.dart';
import 'package:sciencedex_project/core/local_storage/local_storage.dart';

class HomePageStore extends ChangeNotifier {
  String _name = "gabriel";
  bool loading = true;
  List<PeriodoEntity> periodosList = [];

  HomePageStore() {
    setPeriodosListState();
  }

  String getName() => _name;

  void setName(String name) {
    _name = name;

    notifyListeners();
  }

  void setPeriodosListState() async {
    LocalStorage localStorage = LocalStorage();

    List<dynamic>? periodos = await localStorage.get("periodos");

    if (periodos != null) {
      List<PeriodoEntity> list = [];

      for (var element in periodos) {
        list.add(PeriodoEntity.fromMap(element));
      }

      periodosList = list;
    }

    loading = false;
    notifyListeners();
  }
}
