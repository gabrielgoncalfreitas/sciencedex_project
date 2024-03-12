import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sciencedex_project/app.widget.dart';

void main() async {
  if (!kIsWeb) await Hive.initFlutter();

  initializeDateFormatting();

  runApp(const AppWidget());
}
