import 'package:flutter/material.dart';

import '../core/core.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({
    required this.image,
    required this.project,
    required this.category,
    super.key,
  });

  final Image image;
  final String project;
  final String category;

  static const size = Size(321, 408);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            image,
            Positioned(
              left: 25,
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(project, style: context.headlineSmall.white),
                  Text(category, style: context.bodyMedium.primary1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
