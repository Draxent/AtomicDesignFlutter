import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';

class StoryMenuHeader implements StoryWidget {
  const StoryMenuHeader();

  @override
  Widget call(DashbookContext context) {
    return const StoryScaffold(
      child: MenuHeader(),
    );
  }
}
