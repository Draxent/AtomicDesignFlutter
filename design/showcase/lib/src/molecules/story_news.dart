import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';

class StoryNews implements StoryWidget {
  const StoryNews();

  @override
  Widget call(DashbookContext context) {
    final image1 = Images.blogImage1;
    return StoryScaffold(
      child: News(
        image: context.optionsProperty('Image', image1, [
          PropertyOption('image-1', image1),
          PropertyOption('image-2', Images.blogImage2),
          PropertyOption('image-3', Images.blogImage3),
        ]),
        title: context.textProperty(
            'Name', 'Inland freight a worthy solution for your business'),
        content: context.textProperty('Content',
            'We are dedicated in creating added value for our customers by implementing modern technology in our work.'),
        bulletList: [
          context.textProperty('Item 1', 'Urgent transport solutions'),
          'Reliable & experienced staffs',
          'Urgent transport solutions',
          'Reliable & experienced staffs',
        ],
        date: DateTime(2023, 9, 8),
      ),
    );
  }
}
