import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';
import '../dashbook_utils.dart';

class StoryIconText implements StoryWidget {
  const StoryIconText();

  @override
  Widget call(DashbookContext context) {
    return StoryScaffold(
      child: IconText(
        icon: context.enumProperty('Icon', IconType.values),
        text: context.textProperty('Text', 'Delivery on Time'),
      ),
    );
  }
}
