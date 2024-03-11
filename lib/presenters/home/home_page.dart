import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.layout.dart';
import 'package:sciencedex_project/core/home_page.core.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page.store.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page_pop_up.store.dart';
import 'package:sciencedex_project/presenters/home/widgets/home_page_top_widget.dart';
import 'package:sciencedex_project/presenters/home/widgets/home_page_bottom_widget.dart';
import 'package:sciencedex_project/presenters/home/widgets/home_page_app_bar_widget.dart';
import 'package:sciencedex_project/presenters/home/widgets/home_page_divider_widget.dart';
import 'package:sciencedex_project/presenters/home/widgets/home_page_periodo_list_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomePageCore core = HomePageCore(
    homePageStore: HomePageStore(),
    popUpStore: HomePagePopUpStore(),
  );

  @override
  Widget build(BuildContext context) {
    

    return AppLayout(
      appBar: HomePageAppBarWidget().appBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                HomePageTopWidget(),
                HomePageDividerWidget()
              ],
            ),
            AnimatedBuilder(
              animation: core.homePageStore,
              builder: (context, _) => HomePagePeriodoListWidget(core: core),
            ),
            const HomePageBottomWidget()
          ],
        ),
      ),
    );
  }
}
