import 'package:flutter/material.dart';

import './app_colors.dart';
import './app_font_families.dart';

class AppThemes {
  static ThemeData primaryTheme = ThemeData(
    colorSchemeSeed: AppColors.primaryColor,
    fontFamily: AppFontFamilies.sfProTextRegular,
    unselectedWidgetColor: Colors.grey,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
      elevation: 2.0,
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.grey[200],
    dividerColor: Colors.grey[400],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
    ),
  );
}
