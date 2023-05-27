import 'package:design/design.dart';
import 'package:flutter/material.dart';

import './about.dart';
import './banner.dart';
import './blog.dart';
import './contacts.dart';
import './projects.dart';
import './services.dart';
import './team.dart';
import './testimonials.dart';
import './why_us.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MenuHeader(),
        SectionBanner(),
        SectionServices(),
        SectionAbout(),
        Space.vXXXL,
        SectionProjects(),
        Space.vXXXL,
        SectionTestimonials(),
        Space.vXXXL,
        SectionWhyUs(),
        Space.vXXXL,
        SectionTeam(),
        Space.vXXXL,
        SectionContacts(),
        Space.vXXXL,
        SectionBlog(),
        Space.vXL,
      ],
    );
  }
}
