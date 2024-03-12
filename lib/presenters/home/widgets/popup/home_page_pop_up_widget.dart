import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';
import 'package:sciencedex_project/core/utils/navigate.dart';
import 'package:sciencedex_project/presenters/home/controllers/home_page.controller.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page_pop_up.store.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_form_widget.dart';
import 'package:sciencedex_project/shared/widgets/custom_text.dart';

class HomePagePopUpWidget extends StatelessWidget {
  final int index;
  final HomePageController homePageController;
  final HomePagePopUpStore popUpStore;

  const HomePagePopUpWidget({
    super.key,
    required this.homePageController,
    required this.popUpStore,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.whiteColor,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Transform.translate(
              offset: const Offset(0, -15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Transform.translate(
                    offset: const Offset(22.5, 0),
                    child: const CText("Novo período", fontWeight: FontWeight.w600, fontSize: 13),
                  ),
                  const Spacer(),
                  Transform.translate(
                    offset: const Offset(15, 0),
                    child: IconButton(
                      onPressed: () => Navigate(context).pop(),
                      icon: const Icon(Icons.close_rounded, color: AppColors.tertiaryColor),
                      iconSize: 28,
                      splashColor: AppColors.none,
                      highlightColor: AppColors.none,
                    ),
                  ),
                ],
              ),
            ),
            Flex(
              direction: Axis.vertical,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: AnimatedBuilder(
                    animation: popUpStore,
                    builder: (context, _) => HomePagePopUpFormWidget(
                      homePageController: homePageController,
                      popUpStore: popUpStore,
                      index: index,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
