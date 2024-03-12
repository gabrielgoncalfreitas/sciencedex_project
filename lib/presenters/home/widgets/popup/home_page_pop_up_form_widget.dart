import 'package:flutter/material.dart';
import 'package:sciencedex_project/presenters/home/controllers/home_page.controller.dart';
import 'package:sciencedex_project/presenters/home/stores/home_page_pop_up.store.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_form_actions_widget.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_form_crud_mode_widget.dart';
import 'package:sciencedex_project/presenters/home/widgets/popup/home_page_pop_up_form_view_mode_widget.dart';

class HomePagePopUpFormWidget extends StatefulWidget {
  final int index;
  final HomePageController homePageController;
  final HomePagePopUpStore popUpStore;

  const HomePagePopUpFormWidget({
    super.key,
    required this.index,
    required this.homePageController,
    required this.popUpStore,
  });

  @override
  State<HomePagePopUpFormWidget> createState() => _HomePagePopUpFormWidgetState();
}

class _HomePagePopUpFormWidgetState extends State<HomePagePopUpFormWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool editMode = widget.popUpStore.editMode;
    bool crudMode = widget.popUpStore.crudMode;

    return Form(
      key: _formKey,
      child: Column(
        children: [
          Visibility(
            visible: editMode == true || crudMode == true,
            child: HomePagePopUpFormCrudModeWidget(
              homePageController: widget.homePageController,
              popUpStore: widget.popUpStore,
            ),
          ),
          Visibility(
            visible: editMode == false && crudMode == false,
            child: HomePagePopUpFormViewModeWidget(
              homePageController: widget.homePageController,
              popUpStore: widget.popUpStore,
            ),
          ),
          HomePagePopUpFormActionsWidget(
            index: widget.index,
            homePageController: widget.homePageController,
            popUpStore: widget.popUpStore,
          ),
        ],
      ),
    );
  }
}
