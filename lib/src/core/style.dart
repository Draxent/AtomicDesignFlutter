import 'package:flutter/material.dart';

abstract class Style {}

abstract class AppColors {
  static const primary1 = Color.fromARGB(255, 255, 190, 52);
  static const primary2 = Color.fromARGB(255, 9, 18, 66);
  static const secondary = Color.fromARGB(255, 244, 244, 244);
  static const headingFont = Color.fromARGB(255, 28, 31, 53);
  static const paragraphFont = Color.fromARGB(255, 102, 108, 137);
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
  static const vXL = SizedBox(height: 65);

  static const hS = SizedBox(height: 8);
  static const hM = SizedBox(height: 12);
  static const hL = SizedBox(height: 22);
  static const hXL = SizedBox(height: 65);
}
