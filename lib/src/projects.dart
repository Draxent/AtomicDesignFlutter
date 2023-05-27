import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SectionProjects extends StatelessWidget {
  const SectionProjects({super.key});

  static const backgroundHeight =
      backgroundWhiteHeight + backgroundOrangeHeight;
  static const backgroundWhiteHeight = 360.0;
  static const backgroundOrangeHeight = 400.0;

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        _SectionProjectBackground(),
        Positioned(child: _SectionProjectContent()),
      ],
    );
  }
}

class _SectionProjectBackground extends StatelessWidget {
  const _SectionProjectBackground();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: SectionProjects.backgroundWhiteHeight),
        Container(
          height: SectionProjects.backgroundOrangeHeight,
          decoration: const BoxDecoration(gradient: AppColors.gradient),
        ),
      ],
    );
  }
}

class _SectionProjectContent extends StatelessWidget {
  const _SectionProjectContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Transporting Across The World', style: context.headlineLarge),
        Space.vXL,
        const _SectionProjectList(),
        Space.vXXL,
        Button(
          color: ButtonColor.blue,
          text: 'More Work',
          onPressed: () {},
        ),
      ],
    );
  }
}

class _SectionProjectList extends StatelessWidget {
  const _SectionProjectList();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final numProjects =
        (screenWidth / (Images.projectWidth + Space.hM.width!)).floor();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProjectImage(
          image: Images.project1,
          project: 'Liquid Transportation',
          category: 'Premium Tankers',
        ),
        if (numProjects > 1) Space.hM,
        if (numProjects > 1)
          ProjectImage(
            image: Images.project2,
            project: 'Packaging Solutions',
            category: 'Warehouse Management',
          ),
        if (numProjects > 2) Space.hM,
        if (numProjects > 2)
          ProjectImage(
            image: Images.project3,
            project: 'Contract Logistics',
            category: 'Road Transportation',
          ),
        if (numProjects > 3) Space.hM,
        if (numProjects > 3)
          ProjectImage(
            image: Images.project4,
            project: 'Warehouse & Distribution',
            category: 'Large Warehouse',
          ),
        if (numProjects > 4) Space.hM,
        if (numProjects > 4)
          ProjectImage(
            image: Images.project5,
            project: 'Specialized Transport',
            category: 'Ocean Transports',
          ),
      ],
    );
  }
}
