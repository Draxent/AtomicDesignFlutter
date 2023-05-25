import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import '../core/core.dart';

enum SocialLinkType {
  facebook,
  instagram,
  linkedin,
  twitter,
}

extension SocialLinkTypeExtension on SocialLinkType {
  Image get image {
    switch (this) {
      case SocialLinkType.facebook:
        return Images.socialFacebook2;
      case SocialLinkType.instagram:
        return Images.socialInstagram2;
      case SocialLinkType.linkedin:
        return Images.socialLinkdin2;
      case SocialLinkType.twitter:
        return Images.socialTwitter2;
    }
  }
}

typedef SocialLinksData = Map<SocialLinkType, String>;
typedef SocialLinkData = MapEntry<SocialLinkType, String>;

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    required this.links,
    super.key,
  });

  final SocialLinksData links;

  static const height = Images.social2Height + 2 * _verticalPadding;
  static const _verticalPadding = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 17, vertical: _verticalPadding),
      decoration: const BoxDecoration(gradient: AppColors.gradient),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: links.entries
            .mapIndexed((index, e) => _SocialLink(isFirst: index == 0, link: e))
            .toList(growable: false),
      ),
    );
  }
}

class _SocialLink extends StatelessWidget {
  const _SocialLink({
    required this.isFirst,
    required this.link,
  });

  final bool isFirst;
  final SocialLinkData link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: isFirst ? 0 : 20),
      child: InkWell(
        onTap: () {}, // open url link.value
        child: link.key.image,
      ),
    );
  }
}
