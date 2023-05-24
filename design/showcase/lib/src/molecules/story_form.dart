import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:showcase/src/dashbook_utils.dart';

import '../dashbook_story.dart';

class StoryForm implements StoryWidget {
  const StoryForm();

  @override
  Widget call(DashbookContext context) {
    return StoryScaffold(
      withBlueBox: true,
      child: AppForm(
        inputs: [
          Input(hintText: context.textProperty('Text input 1', 'Your name')),
          const Input(hintText: 'Email'),
          Input(
            hintText: 'Phone Number',
            isRequired:
                context.boolProperty('Is phone number required?', false),
          ),
          const Input(hintText: 'City'),
        ],
        msgInput: Input(
          hintText: 'Your Message',
          isRequired: false,
          numLines: context.intProperty('Num lines', 4),
        ),
        submitText: context.textProperty('Submit text', 'Submit Message'),
      ),
    );
  }
}
