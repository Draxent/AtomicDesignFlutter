import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';

class StoryProjectImage implements StoryWidget {
  const StoryProjectImage();

  @override
  Widget call(DashbookContext context) {
    final defaultValue = Images.project1;
    return StoryScaffold(
      child: ProjectImage(
        image: context.optionsProperty('Image', defaultValue, [
          PropertyOption('project-1', defaultValue),
          PropertyOption('project-2', Images.project2),
          PropertyOption('project-3', Images.project3),
          PropertyOption('project-4', Images.project4),
          PropertyOption('project-5', Images.project5),
        ]),
        project: context.textProperty('Project', 'Liquid Transportation'),
        category: context.textProperty('Category', 'Premium Tankers'),
      ),
    );
  }
}
