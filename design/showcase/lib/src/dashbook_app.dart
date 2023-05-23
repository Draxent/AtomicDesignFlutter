import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:dashbook/dashbook.dart';

import 'atoms/story_button.dart';
import 'atoms/story_heading.dart';
import 'atoms/story_input.dart';
import 'atoms/story_menu.dart';
import 'atoms/story_social_info.dart';

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
          .add('Button', const StoryButton())
          .add('Heading', const StoryHeading())
          .add('Input', const StoryInput())
          .add('Menu', const StoryMenu())
          .add('Social Info', const StorySocialInfo()),
    );
  }
}
