import 'package:flutter/material.dart';

import '../atoms/atoms.dart';
import '../core/core.dart';

enum ReviewBackground {
  light,
  dark,
}

extension ReviewBackgroundExtension on ReviewBackground {
  Color get color {
    switch (this) {
      case ReviewBackground.light:
        return AppColors.secondary;
      case ReviewBackground.dark:
        return AppColors.primary2;
    }
  }

  TextStyle modifiedTextStyle(TextStyle textStyle) {
    switch (this) {
      case ReviewBackground.light:
        return textStyle;
      case ReviewBackground.dark:
        return textStyle.white;
    }
  }
}

class Review extends StatelessWidget {
  const Review({
    required this.userImage,
    required this.userName,
    required this.userCompany,
    required this.review,
    this.numStars = NumStars.n5,
    this.background = ReviewBackground.light,
    super.key,
  });

  final Image userImage;
  final String userName;
  final String userCompany;
  final String review;
  final NumStars numStars;
  final ReviewBackground background;

  static const size = Size(600, 425);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        color: background.color,
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 62),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                User(
                  image: userImage,
                  name: userName,
                  company: userCompany,
                  isWhiteText: background == ReviewBackground.dark,
                ),
                Images.testimonialsQuote,
              ],
            ),
            Text(
              review,
              style: background.modifiedTextStyle(context.quoteTextStyle),
            ),
            Stars(number: numStars),
          ],
        ),
      ),
    );
  }
}
