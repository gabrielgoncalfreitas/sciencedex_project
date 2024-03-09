import 'package:sciencedex_project/core/contracts/home_page.core.contract.dart';
import 'package:sciencedex_project/presenters/home/home_page.controller.dart';
import 'package:sciencedex_project/presenters/home/home_page.store.dart';

class HomePageCore implements IHomePageCore {
  @override
  late HomePageController controller;

  @override
  final HomePageStore store;

  @override
  HomePageCore({
    required this.store,
  }) {
    controller = HomePageController(store: store);
  }
}
