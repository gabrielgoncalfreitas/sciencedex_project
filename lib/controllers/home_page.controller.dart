import 'package:flutter/material.dart';
import 'package:sciencedex_project/presenters/home/widgets/home_page_pop_up_widget.dart';
import 'package:sciencedex_project/stores/home_page.store.dart';

class HomePageController {
  final HomePageStore store;

  HomePageController({required this.store});

  void adicionarPeriodo(BuildContext context) async {
    await _showMyDialog(context);
  }

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      useSafeArea: true,
      builder: (BuildContext context) => const HomePagePopUpWidget(),
    );
  }
}
