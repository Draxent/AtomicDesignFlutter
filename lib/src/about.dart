import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SectionAbout extends StatelessWidget {
  const SectionAbout({super.key});

  static const contentPadding = 85.0;
  static const contentWidth = 472.0;
  static const contentHeight = 2 * contentPadding + Images.aboutImage1Height;
  static const contentPositionBottom = 100.0;

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              _SectionAboutBackground(),
              Positioned.fill(
                bottom: contentPositionBottom,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: _SectionAboutContent(),
                ),
              ),
            ],
          ),
          _SectionAboutCounter(),
        ],
      ),
    );
  }
}

class _SectionAboutCounter extends StatelessWidget {
  const _SectionAboutCounter();

  static const height = 143.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      decoration: const BoxDecoration(
        border:
            Border.symmetric(horizontal: BorderSide(color: AppColors.divider)),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _Counter(
            count: 1294,
            text: 'Delivered Packages',
          ),
          SizedBox(width: 114),
          VerticalDivider(),
          SizedBox(width: 114),
          _Counter(
            count: 3594,
            text: 'Satisfied Clients',
          ),
        ],
      ),
    );
  }
}

class _Counter extends StatelessWidget {
  const _Counter({
    required this.count,
    required this.text,
  });

  final int count;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(count.toString(), style: context.displayMedium),
        Space.hM,
        Images.aboutSeparator,
        Space.hM,
        Text(text, style: context.aboutCounterTextStyle),
      ],
    );
  }
}

class _SectionAboutBackground extends StatelessWidget {
  const _SectionAboutBackground();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Images.aboutBg,
        const SizedBox(height: SectionAbout.contentHeight),
      ],
    );
  }
}

class _SectionAboutContent extends StatelessWidget {
  const _SectionAboutContent();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(SectionAbout.contentPadding),
          color: AppColors.white,
          height:
              SectionAbout.contentHeight + SectionAbout.contentPositionBottom,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const _SectionAboutContentText(),
              const SizedBox(width: SectionAbout.contentPadding),
              Images.aboutImage1,
            ],
          ),
        ),
        Positioned(
          top: Images.aboutImage1Height,
          right: Images.aboutImage1Width - 100,
          child: Images.aboutImage2,
        ),
      ],
    );
  }
}

class _SectionAboutContentText extends StatelessWidget {
  const _SectionAboutContentText();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: SectionAbout.contentWidth,
      height: Images.aboutImage1Height,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: SizedBox(
          width: SectionAbout.contentWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Heading(
                title: 'Why Us',
                heading: 'We provide full range global logistics solution',
              ),
              Space.vS,
              Text(
                  'Leverage agile frameworks to provide a robust synopsis for strategy foster collaborative thinking to further the overall value proposition.'),
              Space.vS,
              Text(
                  'Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.'),
              Space.vS,
              IconText(
                icon: IconType.package,
                text: 'Delivery on Time',
              ),
              Space.vS,
              IconText(
                icon: IconType.money,
                text: 'Optimized Travel Cost',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
