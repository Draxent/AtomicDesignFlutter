import 'package:design/design.dart';
import 'package:flutter/material.dart';

import './banner.dart';
import './services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MenuHeader(),
        SectionBanner(),
        SectionServices(),
      ],
    );
  }
}
