import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SectionWhyUs extends StatelessWidget {
  const SectionWhyUs({super.key});

  static const width = 1920.0;
  static const height = 890.0;
  static const textWidth = 650.0;

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      fit: BoxFit.scaleDown,
      child: SizedBox(
        width: SectionWhyUs.width,
        height: SectionWhyUs.height,
        child: Stack(
          children: [
            _SectionWhyUsBackground(),
            Positioned.fill(
              child: Center(child: _SectionWhyUsContent()),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionWhyUsContent extends StatelessWidget {
  const _SectionWhyUsContent();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _SectionWhyUsImage(),
        Space.hXL,
        _SectionWhyUsText(),
      ],
    );
  }
}

class _SectionWhyUsImage extends StatelessWidget {
  const _SectionWhyUsImage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Images.whyUsImage,
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                Images.whyUsTagBg,
                Positioned.fill(
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Images.whyUsTagIcon,
                        Space.hL,
                        SizedBox(
                          width: 280,
                          child: Text(
                            'Moving your products across borders',
                            style:
                                context.bodyMedium.black.copyWith(fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _SectionWhyUsText extends StatelessWidget {
  const _SectionWhyUsText();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: SectionWhyUs.textWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Heading(
            title: 'Why Choose Us',
            heading: 'We create opportunity to reach potential',
          ),
          Space.vL,
          Text(
              'Leverage agile frameworks to provide a robust synopsis for strategy foster collaborative thinking to further the overall value proposition.'),
          Space.vXXL,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconText(icon: IconType.package, text: 'Safe Package'),
                  Space.vL,
                  IconText(icon: IconType.world, text: 'Global Tracking'),
                  Space.vL,
                  IconText(icon: IconType.clock, text: 'In Time Delivery'),
                ],
              ),
              Space.hXL,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconText(icon: IconType.ship, text: 'Ship Everyware'),
                  Space.vL,
                  IconText(icon: IconType.headphone, text: '24/7 Support'),
                  Space.vL,
                  IconText(icon: IconType.coin, text: 'Transparant Pricing'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SectionWhyUsBackground extends StatelessWidget {
  const _SectionWhyUsBackground();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: SectionWhyUs.width / 2,
          height: SectionWhyUs.height,
          child: ColoredBox(color: AppColors.primary2),
        ),
        SizedBox(
          width: SectionWhyUs.width / 2,
          height: SectionWhyUs.height,
          child: ColoredBox(color: AppColors.secondary),
        ),
      ],
    );
  }
}
