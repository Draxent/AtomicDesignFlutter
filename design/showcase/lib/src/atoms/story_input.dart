import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';
import '../dashbook_utils.dart';

class StoryInput implements StoryWidget {
  const StoryInput();

  @override
  Widget call(DashbookContext context) {
    return StoryScaffold(
      withBlueBox: true,
      child: Input(
        hintText: context.textProperty('Hint', 'Email'),
        isRequired: context.boolProperty('Is required?', true),
        numLines: context.intProperty('Number of lines', 1),
      ),
    );
  }
}
