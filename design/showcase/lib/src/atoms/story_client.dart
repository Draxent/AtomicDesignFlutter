import 'package:dashbook/dashbook.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../dashbook_story.dart';

class StoryClient implements StoryWidget {
  const StoryClient();

  @override
  Widget call(DashbookContext context) {
    final bg1 = Images.contactsClientImg1;
    final logo1 = Images.contactsClientLogo1;
    return StoryScaffold(
      child: Client(
        background: context.optionsProperty('Background', bg1, [
          PropertyOption('bg-1', bg1),
          PropertyOption('bg-2', Images.contactsClientImg2),
          PropertyOption('bg-3', Images.contactsClientImg3),
          PropertyOption('bg-4', Images.contactsClientImg4),
        ]),
        logo: context.optionsProperty('Logo', logo1, [
          PropertyOption('logo-1', logo1),
          PropertyOption('logo-2', Images.contactsClientLogo2),
          PropertyOption('logo-3', Images.contactsClientLogo3),
          PropertyOption('logo-4', Images.contactsClientLogo4),
        ]),
      ),
    );
  }
}
