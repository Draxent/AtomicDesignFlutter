import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';
import '../dashbook_utils.dart';

class StorySocialInfo implements StoryWidget {
  const StorySocialInfo();

  @override
  Widget call(DashbookContext context) {
    return StoryScaffold(
      withBlueBox: true,
      child: SocialInfo(
        type: context.enumProperty('Type', SocialInfoType.values),
        firstText: context.textProperty('First text', 'Mon - Sat 9.00 - 18.00'),
        secondText: context.textProperty('Second text', 'Sunday Closed'),
      ),
    );
  }
}
