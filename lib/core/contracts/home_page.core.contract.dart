import 'package:sciencedex_project/presenters/home/home_page.controller.dart';
import 'package:sciencedex_project/presenters/home/home_page.store.dart';

abstract class IHomePageCore {
  abstract final HomePageStore store;
  abstract final HomePageController controller;

  IHomePageCore();
}
