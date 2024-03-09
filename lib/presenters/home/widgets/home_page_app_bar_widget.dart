import 'package:flutter/material.dart';
import 'package:sciencedex_project/widgets/custom_text.dart';

class HomePageAppBarWidget {
  AppBar appBar() {
    return AppBar(
      leading: const Icon(Icons.arrow_back_ios_new_rounded, size: 14),
      titleSpacing: -10,
      title: const CText("Configurações", fontWeight: FontWeight.w500, fontSize: 20),
    );
  }
}
