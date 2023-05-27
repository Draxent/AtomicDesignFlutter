import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SectionTeam extends StatelessWidget {
  const SectionTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Heading(
            alignment: HeadingAlignment.center,
            title: 'The Transporters',
            heading: 'Meet Expert Team',
          ),
          Space.vXL,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TeamMember(
                photo: Images.team1,
                name: 'Jessca Arow',
                role: 'Designer',
                socialLinks: const {
                  SocialLinkType.twitter: '',
                  SocialLinkType.facebook: '',
                  SocialLinkType.instagram: '',
                },
              ),
              Space.hXXL,
              TeamMember(
                photo: Images.team2,
                name: 'Kathleen Smith',
                role: 'Designer',
                socialLinks: const {
                  SocialLinkType.linkedin: '',
                  SocialLinkType.twitter: '',
                  SocialLinkType.facebook: '',
                  SocialLinkType.instagram: '',
                },
              ),
              Space.hXXL,
              TeamMember(
                photo: Images.team3,
                name: 'Rebecca Tylor',
                role: 'Designer',
                socialLinks: const {
                  SocialLinkType.facebook: '',
                  SocialLinkType.instagram: '',
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
