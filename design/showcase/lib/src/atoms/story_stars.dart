import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:showcase/src/dashbook_utils.dart';

import '../dashbook_story.dart';

class StoryStars implements StoryWidget {
  const StoryStars();

  @override
  Widget call(DashbookContext context) {
    return StoryScaffold(
      child: Stars(
        number: context.enumProperty('Number of stars', NumStars.values),
      ),
    );
  }
}
