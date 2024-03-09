import 'package:sciencedex_project/contracts/home_page.contract.dart';
import 'package:sciencedex_project/controllers/home_page.controller.dart';
import 'package:sciencedex_project/stores/home_page.store.dart';

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
