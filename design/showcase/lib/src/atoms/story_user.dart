import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';

class StoryUser implements StoryWidget {
  const StoryUser();

  @override
  Widget call(DashbookContext context) {
    final imageUser1 = Images.testimonialsUser1;
    return StoryScaffold(
      child: User(
        image: context.optionsProperty('Image', imageUser1, [
          PropertyOption('User1', imageUser1),
          PropertyOption('User2', Images.testimonialsUser2),
        ]),
        name: context.textProperty('Name', 'Kathleen Smith'),
        company: context.textProperty('Company', 'Fuel Company'),
      ),
    );
  }
}
