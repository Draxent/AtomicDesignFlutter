import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:dashbook/dashbook.dart';
import 'package:showcase/src/atoms/story_icon_text.dart';
import 'package:showcase/src/atoms/story_project_image.dart';

import 'atoms/story_button.dart';
import 'atoms/story_heading.dart';
import 'atoms/story_input.dart';
import 'atoms/story_menu.dart';
import 'atoms/story_social_info.dart';
import 'atoms/story_social_links.dart';
import 'atoms/story_stars.dart';
import 'atoms/story_user.dart';
import 'molecules/story_form.dart';
import 'molecules/story_review.dart';
import 'organisms/story_menu_header.dart';

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
        )
          ..storiesOf('Atoms')
              .decorator(centerDecorator)
              .add('Button', const StoryButton())
              .add('Heading', const StoryHeading())
              .add('IconText', const StoryIconText())
              .add('Input', const StoryInput())
              .add('Menu', const StoryMenu())
              .add('ProjectImage', const StoryProjectImage())
              .add('Social Info', const StorySocialInfo())
              .add('Social Links', const StorySocialLinks())
              .add('Stars', const StoryStars())
              .add('User', const StoryUser())
          ..storiesOf('Molecules')
              .decorator(centerDecorator)
              .add('Form', const StoryForm())
              .add('Review', const StoryReview())
          ..storiesOf('Organisms')
              .decorator(centerDecorator)
              .add('Menu Header', const StoryMenuHeader()));
  }
}
