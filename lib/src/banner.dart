import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SectionBanner extends StatelessWidget {
  const SectionBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Images.bannerBg,
        Positioned.fill(
          left: -screenWidth / 4,
          child: Center(
            child: FittedBox(
              child: SizedBox(
                width: 554,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Heading(
                      title: 'Logistics & Supply Chain Solutions',
                      heading: 'Your Gateway to any Destination in the World',
                      isBig: true,
                      isWhite: true,
                    ),
                    Space.vM,
                    Text(
                      'In augue ligula, feugiat ut nulla consequat. Ut est lacus, molestie in arcu no, iaculis vehicula ipsum. Nunc faucibus, nisl id dapibus finibus, enim diam interdum nulla, sed laoreet risus lectus.',
                      style: context.bodyMedium.white,
                    ),
                    Space.vL,
                    Button(text: 'Explore More', onPressed: () {}),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
