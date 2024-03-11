import 'package:sciencedex_project/presenters/home/controllers/home_page.controller.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page.store.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page_pop_up.store.dart';

abstract class IHomePageCore {
  abstract final HomePageController controller;
  abstract final HomePageStore homePageStore;
  abstract final HomePagePopUpStore popUpStore;

  IHomePageCore();
}
