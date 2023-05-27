import 'package:design/design.dart';
import 'package:flutter/material.dart';

import './about.dart';
import './banner.dart';
import './projects.dart';
import './services.dart';
import './testimonials.dart';

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
        Space.vXL,
      ],
    );
  }
}
