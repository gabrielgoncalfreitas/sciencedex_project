import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.theme.dart';
import 'package:sciencedex_project/presenters/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: const AppTheme().theme(),
      home: HomePage(),
    );
  }
}
