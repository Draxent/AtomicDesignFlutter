import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';
import '../dashbook_utils.dart';

class StoryHeading implements StoryWidget {
  const StoryHeading();

  @override
  Widget call(DashbookContext context) {
    final isMainHeading = context.boolProperty('Is main heading?', false);
    return StoryScaffold(
      child: ColoredBox(
        color: isMainHeading ? Colors.blue : Colors.white,
        child: Heading(
          title: context.textProperty('Category text', 'What We Do'),
          heading:
              context.textProperty('Text', 'Safe & Reliable Cargo Solutions'),
          isMainHeading: isMainHeading,
          alignment: context.enumProperty('Alignment', HeadingAlignment.values),
        ),
      ),
    );
  }
}
