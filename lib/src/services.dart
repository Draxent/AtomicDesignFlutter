import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SectionServices extends StatelessWidget {
  const SectionServices({super.key});

  static const headingWidth = 294.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: headingWidth,
              child: Heading(
                title: 'What We Do',
                heading: 'Safe & Reliable Cargo Solutions',
              ),
            ),
            Space.hL,
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _Service(
                      image: Images.service1,
                      title: 'Sea Transport Services',
                      content:
                          'Following the quality of our service thus having gained trust of our many clients.',
                    ),
                    Space.hXXL,
                    _Service(
                      image: Images.service2,
                      title: 'Warehousing Services',
                      content:
                          'Following the quality of our service thus having gained trust of our many clients.',
                    ),
                  ],
                ),
                Space.vXXL,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _Service(
                      image: Images.service3,
                      title: 'Air Fright Services',
                      content:
                          'Following the quality of our service thus having gained trust of our many clients.',
                    ),
                    Space.hXXL,
                    _Service(
                      image: Images.service4,
                      title: 'Local Shipping Services',
                      content:
                          'Following the quality of our service thus having gained trust of our many clients.',
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _Service extends StatelessWidget {
  const _Service({
    required this.image,
    required this.title,
    required this.content,
  });

  final Image image;
  final String title;
  final String content;

  static const imageWidth = 75.0;
  static const contentWidth = 295.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: imageWidth,
          child: image,
        ),
        Space.hM,
        const VerticalDivider(),
        Space.hM,
        SizedBox(
          width: contentWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title, style: context.bodyLarge),
              Space.vM,
              Text(content),
            ],
          ),
        ),
      ],
    );
  }
}
