import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';

class StoryTeamMember implements StoryWidget {
  const StoryTeamMember();

  @override
  Widget call(DashbookContext context) {
    final team1 = Images.team1;
    return StoryScaffold(
      child: TeamMember(
        photo: context.optionsProperty('Image', team1, [
          PropertyOption('team-member-1', team1),
          PropertyOption('team-member-2', Images.team2),
          PropertyOption('team-member-3', Images.team3),
        ]),
        name: context.textProperty('Name', 'Jessica Arow'),
        role: context.textProperty('Role', 'Designer'),
        socialLinks: const {
          SocialLinkType.facebook: '',
          SocialLinkType.instagram: '',
          SocialLinkType.linkedin: '',
          SocialLinkType.twitter: '',
        },
      ),
    );
  }
}
