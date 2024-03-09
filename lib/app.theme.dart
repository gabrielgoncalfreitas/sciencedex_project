import 'package:flutter/material.dart';
import 'package:sciencedex_project/app.colors.dart';

class AppTheme {
  const AppTheme();

  ThemeData theme() {
    ColorScheme colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
    );

    return ThemeData(
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.whiteColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.blackColor),
        titleTextStyle: TextStyle(color: AppColors.blackColor),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.secondary,
        foregroundColor: Colors.white,
      ),
    );
  }
}
