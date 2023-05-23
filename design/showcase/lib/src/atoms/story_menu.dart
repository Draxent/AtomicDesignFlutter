import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';
import '../dashbook_utils.dart';

class StoryMenu implements StoryWidget {
  const StoryMenu();

  @override
  Widget call(DashbookContext context) {
    return StoryScaffold(
      withBlueBox: true,
      child: Menu(
        items: [
          MenuItemData(
            text: context.textProperty('Text first item', 'Home'),
            onPressed: () {},
          ),
          MenuItemData(text: 'About', onPressed: () {}),
          MenuItemData(
            text: 'Pages',
            onPressed: () {},
            subItems: context.boolProperty('Pages has subpages?', true)
                ? [MenuSubItemData(text: 'Page1', onPressed: () {})]
                : [],
          ),
          MenuItemData(text: 'Project', onPressed: () {}),
          MenuItemData(text: 'Contact', onPressed: () {}),
        ],
        indexItemSelected: context.intProperty('Index item selected', 0),
      ),
    );
  }
}
