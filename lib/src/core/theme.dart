import 'package:flutter/material.dart';

import 'style.dart';

abstract class AppThemeData {
  static const _fontFamilyHeading = 'Rubik';
  static const _fontFamilyText = 'Krub';

  static ThemeData get theme => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary2),
        textTheme: TextTheme(
          displayLarge: _headingFont(60, FontWeight.bold),
          displayMedium: _headingFont(50, FontWeight.w600),
          displaySmall: _headingFont(40, FontWeight.w600),
          headlineLarge: _headingFont(35, FontWeight.w500),
          headlineMedium: _headingFont(30, FontWeight.w500),
          headlineSmall: _headingFont(25, FontWeight.w500),
          bodyLarge: _headingFont(20, FontWeight.normal),
          bodyMedium: const TextStyle(
            fontFamily: _fontFamilyText,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.paragraphFont,
          ),
        ),
      );

  static TextStyle _headingFont(double fontSize, FontWeight fontWeight) =>
      TextStyle(
        fontFamily: _fontFamilyHeading,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: AppColors.headingFont,
      );
}
