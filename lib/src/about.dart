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
    return const Column(
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
    );
  }
}

class _SectionAboutCounter extends StatelessWidget {
  const _SectionAboutCounter();

  static const height = 143.0;

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: height,
      child: Placeholder(),
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
        child: Placeholder(),
      ),
    );
  }
}
