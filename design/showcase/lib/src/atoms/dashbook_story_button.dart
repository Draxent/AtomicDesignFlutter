import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';

class DashbookStoryButton implements StoryWidget {
  const DashbookStoryButton();

  @override
  Widget call(DashbookContext context) {
    return const StoryScaffold(
      child: Button(),
    );
  }
}
