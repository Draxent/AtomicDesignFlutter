import 'package:flutter/material.dart';

import '../core/core.dart';

enum IconType {
  clock,
  coin,
  headphone,
  money,
  package,
  ship,
  world,
}

extension IconTypeExtension on IconType {
  Image get image => Images.icon(name);
}

class IconText extends StatelessWidget {
  const IconText({
    required this.icon,
    required this.text,
    super.key,
  });

  final IconType icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon.image,
        Space.hM,
        Text(text,
            style:
                context.headlineSmall.copyWith(fontWeight: FontWeight.normal)),
      ],
    );
  }
}
