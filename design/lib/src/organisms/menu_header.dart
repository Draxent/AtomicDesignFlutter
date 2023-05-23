import 'package:flutter/material.dart';

import '../core/core.dart';
import '../atoms/atoms.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({super.key});

  static const height = heightHeader + heightMenu;
  static const heightHeader = 160.0;
  static const heightMenu = Menu.height;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: screenWidth,
          height: heightHeader,
          child: const _HeaderView(),
        ),
        SizedBox(
          width: screenWidth,
          height: heightMenu,
          child: const _MenuView(),
        ),
      ],
    );
  }
}

class _HeaderView extends StatelessWidget {
  const _HeaderView();

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primary2,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Images.logo,
              Space.hXXL,
              const SocialInfo(
                type: SocialInfoType.clock,
                firstText: 'Mon - Sat 9.00 - 18.00',
                secondText: 'Sunday Closed',
              ),
              Space.hXL,
              const SocialInfo(
                type: SocialInfoType.email,
                firstText: 'Email',
                secondText: 'contact@logistics.com',
              ),
              Space.hXL,
              const SocialInfo(
                type: SocialInfoType.phone,
                firstText: 'Call Us',
                secondText: '(00) 112 365 489',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuView extends StatelessWidget {
  const _MenuView();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          width: screenWidth,
          height: MenuHeader.heightMenu,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Images.menuBg,
          ),
        ),
        const Positioned.fill(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: _MenuContentView(),
            ),
          ),
        ),
      ],
    );
  }
}

class _MenuContentView extends StatelessWidget {
  const _MenuContentView();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Menu(
          items: [
            MenuItemData(text: 'Home', onPressed: () {}),
            MenuItemData(text: 'About', onPressed: () {}),
            MenuItemData(
              text: 'Pages',
              onPressed: () {},
              subItems: [MenuSubItemData(text: 'Page1', onPressed: () {})],
            ),
            MenuItemData(text: 'Project', onPressed: () {}),
            MenuItemData(text: 'Contact', onPressed: () {}),
          ],
        ),
        Space.hXXL,
        Images.socialInstagram,
        Space.hL,
        Images.socialFacebook,
        Space.hL,
        Images.socialTwitter,
        Space.hL,
        Images.socialLinkdin,
        Space.hXL,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 28),
          color: AppColors.white,
          height: MenuHeader.heightMenu,
          child: Text('Request Quote', style: context.buttonTextStyle),
        ),
      ],
    );
  }
}
