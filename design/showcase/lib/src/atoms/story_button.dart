import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';
import '../dashbook_utils.dart';

class StoryButton implements StoryWidget {
  const StoryButton();

  @override
  Widget call(DashbookContext context) {
    return StoryScaffold(
      child: Button(
        text: context.textProperty('Text', 'Text'),
        color: context.enumProperty<ButtonColor>(
            'Color', ButtonColor.orange, ButtonColor.values),
        onPressed: () {},
      ),
    );
  }
}
