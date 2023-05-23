import 'package:flutter/material.dart';

import '../core/core.dart';

enum SocialInfoType {
  clock,
  email,
  phone,
}

extension SocialInfoTypeExtension on SocialInfoType {
  Image get image {
    switch (this) {
      case SocialInfoType.clock:
        return Images.socialTime;
      case SocialInfoType.email:
        return Images.socialEmail;
      case SocialInfoType.phone:
        return Images.socialCall;
    }
  }
}

class SocialInfo extends StatelessWidget {
  const SocialInfo({
    required this.type,
    required this.firstText,
    required this.secondText,
    super.key,
  });

  final SocialInfoType type;
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    final textStyle = context.bodyMedium.copyWith(color: AppColors.white);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        type.image,
        Space.hM,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(firstText, style: textStyle),
            Text(secondText, style: textStyle),
          ],
        )
      ],
    );
  }
}
