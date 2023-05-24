import 'package:flutter/material.dart';

import '../core/core.dart';

class Heading extends StatelessWidget {
  const Heading({
    required this.title,
    required this.heading,
    this.isMainHeading = false,
    super.key,
  });

  final String title;
  final String heading;
  final bool isMainHeading;

  TextStyle _textStyleWithColor(TextStyle textStyle) =>
      isMainHeading ? textStyle.white : textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Images.titleStart,
            Container(
              height: Images.titleStartHeight,
              color: isMainHeading
                  ? AppColors.headingMainTitle
                  : AppColors.headingTitle,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  title,
                  style: _textStyleWithColor(
                      context.bodyLarge.copyWith(fontSize: 14)),
                ),
              ),
            ),
          ],
        ),
        Text(
          heading,
          style: _textStyleWithColor(
              isMainHeading ? context.displayLarge : context.headlineLarge),
        ),
      ],
    );
  }
}
