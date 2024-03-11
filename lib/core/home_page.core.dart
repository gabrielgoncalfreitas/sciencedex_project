import 'package:sciencedex_project/core/contracts/home_page.core.contract.dart';
import 'package:sciencedex_project/presenters/home/controllers/home_page.controller.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page.store.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page_pop_up.store.dart';

class HomePageCore implements IHomePageCore {
  @override
  late HomePageController controller;

  @override
  final HomePageStore homePageStore;

  @override
  final HomePagePopUpStore popUpStore;

  @override
  HomePageCore({
    required this.homePageStore,
    required this.popUpStore,
  }) {
    controller = HomePageController(
      homePageStore: homePageStore,
      popUpStore: popUpStore,
    );
  }
}
