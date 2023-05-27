import 'package:flutter/material.dart';

import '../atoms/atoms.dart';
import '../core/core.dart';

class News extends StatelessWidget {
  const News({
    required this.image,
    required this.title,
    required this.content,
    required this.bulletList,
    required this.date,
    this.isOrangeTitle = false,
    super.key,
  });

  final Image image;
  final String title;
  final String content;
  final List<String> bulletList;
  final DateTime date;
  final bool isOrangeTitle;

  static const contentWidth = 364.0;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            image,
            Space.hL,
            DateView(date: date),
            Space.hL,
            const VerticalDivider(),
            SizedBox(
              width: contentWidth,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: isOrangeTitle
                          ? context.headlineSmall.primary1
                          : context.headlineSmall,
                    ),
                    Text(content),
                    BulletList(list: bulletList),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
