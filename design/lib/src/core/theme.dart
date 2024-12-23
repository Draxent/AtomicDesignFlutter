import 'package:flutter/material.dart';

import 'style.dart';

abstract class AppThemeData {
  static const _fontFamilyHeading = 'Rubik';
  static const _fontFamilyText = 'Krub';

  static ThemeData get theme => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary2,
          background: AppColors.white,
        ),
        textTheme: TextTheme(
          displayLarge: _headingFont(60, FontWeight.bold),
          displayMedium: _headingFont(50, FontWeight.w600),
          displaySmall: _headingFont(40, FontWeight.w600),
          headlineLarge: _headingFont(35, FontWeight.w500),
          headlineMedium: _headingFont(30, FontWeight.w500),
          headlineSmall: _headingFont(25, FontWeight.w500),
          bodyLarge: _headingFont(20, FontWeight.normal),
          bodyMedium: const TextStyle(
            package: Style.packageName,
            fontFamily: _fontFamilyText,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.paragraphFont,
          ),
        ),
        dividerColor: AppColors.divider,
      );

  static TextStyle _headingFont(double fontSize, FontWeight fontWeight) =>
      TextStyle(
        package: Style.packageName,
        fontFamily: _fontFamilyHeading,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: AppColors.headingFont,
      );
}

const _fontLeagueSpartan = 'LeagueSpartan';

extension BuildContextExtensionForTextStyle on BuildContext {
  TextStyle get displayLarge => Theme.of(this).textTheme.displayLarge!;
  TextStyle get displayMedium => Theme.of(this).textTheme.displayMedium!;
  TextStyle get displaySmall => Theme.of(this).textTheme.displaySmall!;
  TextStyle get headlineLarge => Theme.of(this).textTheme.headlineLarge!;
  TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium!;
  TextStyle get headlineSmall => Theme.of(this).textTheme.headlineSmall!;
  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get quoteTextStyle =>
      bodyMedium.copyWith(fontStyle: FontStyle.italic);
  TextStyle get buttonTextStyle => bodyMedium.copyWith(
        fontWeight: FontWeight.w600,
        color: AppColors.buttonFont,
      );
  TextStyle get inputTextStyle => const TextStyle(
        package: Style.packageName,
        fontFamily: 'LeagueSpartan',
        fontSize: 20,
        color: AppColors.white,
      );
  TextStyle get aboutCounterTextStyle => const TextStyle(
        package: Style.packageName,
        fontFamily: _fontLeagueSpartan,
        fontSize: 20,
        color: AppColors.headingFont,
      );
}

extension TextStyleExtension on TextStyle {
  TextStyle get white => copyWith(color: AppColors.white);
  TextStyle get black => copyWith(color: AppColors.headingFont);
  TextStyle get primary1 => copyWith(color: AppColors.primary1);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle maybeWhite(bool isWhite) => isWhite ? white : this;
}
