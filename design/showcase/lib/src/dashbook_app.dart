import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:dashbook/dashbook.dart';

import 'atoms/story_bullet_list.dart';
import 'atoms/story_button.dart';
import 'atoms/story_client.dart';
import 'atoms/story_date_view.dart';
import 'atoms/story_heading.dart';
import 'atoms/story_icon_text.dart';
import 'atoms/story_input.dart';
import 'atoms/story_menu.dart';
import 'atoms/story_project_image.dart';
import 'atoms/story_social_info.dart';
import 'atoms/story_social_links.dart';
import 'atoms/story_stars.dart';
import 'atoms/story_user.dart';
import 'molecules/story_form.dart';
import 'molecules/story_news.dart';
import 'molecules/story_review.dart';
import 'molecules/story_team_member.dart';
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
              .add('Bullet List', const StoryBulletList())
              .add('Button', const StoryButton())
              .add('Client', const StoryClient())
              .add('Date View', const StoryDateView())
              .add('Heading', const StoryHeading())
              .add('Icon-Text', const StoryIconText())
              .add('Input', const StoryInput())
              .add('Menu', const StoryMenu())
              .add('Project Image', const StoryProjectImage())
              .add('Social Info', const StorySocialInfo())
              .add('Social Links', const StorySocialLinks())
              .add('Stars', const StoryStars())
              .add('User', const StoryUser())
          ..storiesOf('Molecules')
              .decorator(centerDecorator)
              .add('Form', const StoryForm())
              .add('News', const StoryNews())
              .add('Review', const StoryReview())
              .add('Team Member', const StoryTeamMember())
          ..storiesOf('Organisms')
              .decorator(centerDecorator)
              .add('Menu Header', const StoryMenuHeader()));
  }
}
