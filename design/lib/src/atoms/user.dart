import 'package:flutter/material.dart';

import '../core/core.dart';

class User extends StatelessWidget {
  const User({
    required this.image,
    required this.name,
    required this.company,
    super.key,
  });

  final Image image;
  final String name;
  final String company;

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
            Text(name, style: context.bodyLarge),
            Text(company),
          ],
        )
      ],
    );
  }
}
