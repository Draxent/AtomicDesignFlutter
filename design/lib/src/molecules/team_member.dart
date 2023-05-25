import 'package:flutter/material.dart';

import '../atoms/atoms.dart';
import '../core/core.dart';

class TeamMember extends StatelessWidget {
  const TeamMember({
    required this.photo,
    required this.name,
    required this.role,
    required this.socialLinks,
    super.key,
  });

  final Image photo;
  final String name;
  final String role;
  final SocialLinksData socialLinks;

  static const size = Size(364, 538);
  static const nameBoxHeight = 112.0;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                children: [
                  photo,
                  Container(
                    width: size.width,
                    height: nameBoxHeight,
                    color: AppColors.primary2,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: context.bodyLarge.white),
                        Text(role, style: context.bodyMedium.white),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                right: 0,
                bottom: nameBoxHeight - SocialLinks.height / 2,
                child: SocialLinks(links: socialLinks),
              ),
            ],
          )),
    );
  }
}
