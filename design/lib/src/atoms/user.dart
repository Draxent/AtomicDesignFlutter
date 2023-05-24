import 'package:flutter/material.dart';

import '../core/core.dart';

class User extends StatelessWidget {
  const User({
    required this.image,
    required this.name,
    required this.company,
    this.isWhiteText = false,
    super.key,
  });

  final Image image;
  final String name;
  final String company;
  final bool isWhiteText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        image,
        Space.hS,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(name, style: context.bodyLarge.maybeWhite(isWhiteText)),
            Text(company, style: context.bodyMedium.maybeWhite(isWhiteText)),
          ],
        )
      ],
    );
  }
}
