import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:sciencedex_project/app.widget.dart';

void main() async {
  await Hive.initFlutter();

  runApp(const AppWidget());
}
