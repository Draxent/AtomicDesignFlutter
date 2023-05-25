import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';

class StorySocialLinks implements StoryWidget {
  const StorySocialLinks();

  @override
  Widget call(DashbookContext context) {
    return StoryScaffold(
      child: SocialLinks(
        links: {
          if (context.boolProperty('Show facebook', true))
            SocialLinkType.facebook: '',
          if (context.boolProperty('Show instagram', true))
            SocialLinkType.instagram: '',
          if (context.boolProperty('Show linkedin', true))
            SocialLinkType.linkedin: '',
          if (context.boolProperty('Show twitter', true))
            SocialLinkType.twitter: '',
        },
      ),
    );
  }
}
