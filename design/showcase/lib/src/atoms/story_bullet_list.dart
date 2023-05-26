import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';
import '../dashbook_utils.dart';

class StoryBulletList implements StoryWidget {
  const StoryBulletList();

  @override
  Widget call(DashbookContext context) {
    final numItems = context.intProperty('Number of items', 5);
    final items = List.generate(numItems, (i) => 'Item ${i + 1}');
    return StoryScaffold(
      child: BulletList(list: items),
    );
  }
}
