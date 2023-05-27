import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';
import '../dashbook_utils.dart';

class StoryHeading implements StoryWidget {
  const StoryHeading();

  @override
  Widget call(DashbookContext context) {
    final isWhite = context.boolProperty('Is White?', false);
    return StoryScaffold(
      withBlueBox: isWhite,
      child: Heading(
        title: context.textProperty('Category text', 'What We Do'),
        heading:
            context.textProperty('Text', 'Safe & Reliable Cargo Solutions'),
        isWhite: isWhite,
        isBig: context.boolProperty('Is Big?', false),
        alignment: context.enumProperty('Alignment', HeadingAlignment.values),
      ),
    );
  }
}
