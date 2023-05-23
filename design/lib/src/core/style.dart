import 'package:flutter/material.dart';

abstract class Style {
  static const packageName = 'design';
}

abstract class AppColors {
  static const primary1 = Color.fromARGB(255, 255, 190, 52);
  static const primary2 = Color.fromARGB(255, 9, 18, 66);
  static const secondary = Color.fromARGB(255, 244, 244, 244);
  static const headingFont = Color.fromARGB(255, 28, 31, 53);
  static const paragraphFont = Color.fromARGB(255, 102, 108, 137);
  static const buttonFont = Color.fromARGB(255, 35, 33, 42);
  static const headingTitle = Color.fromARGB(127, 232, 232, 232);
  static const headingMainTitle = Color.fromARGB(127, 4, 28, 55);
  static const inputDecorationBorder = Color.fromARGB(255, 78, 86, 131);

  static const white = Colors.white;
  static const gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(255, 255, 182, 41),
      Color.fromARGB(255, 255, 218, 86),
      Color.fromARGB(255, 255, 215, 166),
    ],
  );
}

abstract class Space {
  static const vS = SizedBox(height: 8);
  static const vM = SizedBox(height: 12);
  static const vL = SizedBox(height: 22);
  static const vXL = SizedBox(height: 40);
  static const vXXL = SizedBox(height: 65);

  static const hS = SizedBox(width: 8);
  static const hM = SizedBox(width: 12);
  static const hL = SizedBox(width: 22);
  static const hXL = SizedBox(width: 40);
  static const hXXL = SizedBox(width: 65);
}
