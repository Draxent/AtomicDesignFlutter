import 'package:flutter/material.dart';

import '../core/core.dart';

enum HeadingAlignment {
  center,
  start,
}

extension HeadingAlignmentExtension on HeadingAlignment {
  CrossAxisAlignment get crossAxisAlignment {
    switch (this) {
      case HeadingAlignment.center:
        return CrossAxisAlignment.center;
      case HeadingAlignment.start:
        return CrossAxisAlignment.start;
    }
  }
}

class Heading extends StatelessWidget {
  const Heading({
    required this.title,
    required this.heading,
    this.isBig = false,
    this.isWhite = false,
    this.alignment = HeadingAlignment.start,
    super.key,
  });

  final String title;
  final String heading;
  final bool isBig;
  final bool isWhite;
  final HeadingAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment.crossAxisAlignment,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Images.titleStart,
            Container(
              height: Images.titleStartHeight,
              color:
                  isWhite ? AppColors.headingMainTitle : AppColors.headingTitle,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  title,
                  style: context.bodyLarge
                      .copyWith(fontSize: 14)
                      .maybeWhite(isWhite),
                ),
              ),
            ),
          ],
        ),
        Text(
          heading,
          style: (isBig ? context.displayLarge : context.headlineLarge)
              .maybeWhite(isWhite),
        ),
      ],
    );
  }
}
