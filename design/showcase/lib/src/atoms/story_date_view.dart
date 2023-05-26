import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';
import '../dashbook_utils.dart';

class StoryDateView implements StoryWidget {
  const StoryDateView();

  @override
  Widget call(DashbookContext context) {
    return StoryScaffold(
      child: DateView(
        date: DateTime(
          2023,
          context.intProperty('Month', 1),
          context.intProperty('Day', 1),
        ),
      ),
    );
  }
}
