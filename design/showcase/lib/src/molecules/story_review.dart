import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:showcase/src/dashbook_utils.dart';

import '../dashbook_story.dart';

class StoryReview implements StoryWidget {
  const StoryReview();

  @override
  Widget call(DashbookContext context) {
    final imageUser1 = Images.testimonialsUser1;
    return StoryScaffold(
      child: Review(
        userImage: context.optionsProperty('Image', imageUser1, [
          PropertyOption('User1', imageUser1),
          PropertyOption('User2', Images.testimonialsUser2),
        ]),
        userName: context.textProperty('Name', 'Kathleen Smith'),
        userCompany: context.textProperty('Company', 'Fuel Company'),
        review: context.textProperty('Review',
            'Leverage agile frameworks to provide a robust synopsis for strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.'),
        numStars: context.enumProperty('Number of stars', NumStars.values),
        background: context.enumProperty('Background', ReviewBackground.values),
      ),
    );
  }
}
