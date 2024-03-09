import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final Widget? body;
  final AppBar? appBar;

  const AppLayout({super.key, this.body, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar ?? AppBar(),
      body: body,
    );
  }
}
