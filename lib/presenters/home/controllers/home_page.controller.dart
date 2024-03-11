import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page.store.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page_pop_up.store.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_widget.dart';

class HomePageController {
  final HomePageStore homePageStore;
  final HomePagePopUpStore popUpStore;

  HomePageController({
    required this.homePageStore,
    required this.popUpStore,
  });

  void abrirPopUp(BuildContext context) async {
    await _showMyDialog(context);
  }

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      useSafeArea: true,
      builder: (BuildContext context) => HomePagePopUpWidget(
        homePageController: this,
        popUpStore: popUpStore,
      ),
    );
  }

  void adicionarPeriodo() {
    log("Olá");
  }
}
