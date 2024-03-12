import 'package:flutter/material.dart';
import 'package:sciencedex_project/presenters/home/widgets/home_page_app_bar_widget.dart';

class AppLayout extends StatelessWidget {
  final Widget? body;
  final AppBar? appBar;

  const AppLayout({super.key, this.body, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBarWidget().appBar(),
      body: SingleChildScrollView(
        child: Flex(
          direction: Axis.vertical,
          children: [
            SizedBox(
              width: double.infinity,
              child: body,
            ),
          ],
        ),
      ),
    );
  }
}
