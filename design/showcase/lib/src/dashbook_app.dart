import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:dashbook/dashbook.dart';

import 'atoms/dashbook_story_button.dart';

class DashbookApp extends StatelessWidget {
  const DashbookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final centerDecorator = CenterDecorator();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Showcase',
      theme: AppThemeData.theme,
      home: Dashbook.dualTheme(
        light: AppThemeData.theme,
        dark: AppThemeData.theme,
        title: 'Showcase',
      )..storiesOf('Atoms')
          .decorator(centerDecorator)
          .add('Button', const DashbookStoryButton()),
    );
  }
}
