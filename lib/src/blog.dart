import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SectionBlog extends StatelessWidget {
  const SectionBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Heading(
            title: 'Our Blog',
            heading: 'Our Latest News',
            alignment: HeadingAlignment.center,
          ),
          Space.vL,
          const Divider(),
          Space.vL,
          News(
            image: Images.blogImage1,
            date: DateTime(2023, 10, 08),
            title: 'Inland freight a worthy solution for your business',
            content:
                'We are dedicated in creating added value for our customers by implementing modern technology in our work.',
            bulletList: const [
              'Urgent transport solutions',
              'Reliable & experienced staffs',
              'Urgent transport solutions',
              'Reliable & experienced staffs',
            ],
          ),
          Space.vL,
          const Divider(),
          Space.vL,
          News(
            image: Images.blogImage2,
            date: DateTime(2023, 10, 12),
            isOrangeTitle: true,
            title: 'How technology can help redraw the supply chain map',
            content:
                'We are dedicated in creating added value for our customers by implementing modern technology in our work.',
            bulletList: const [
              'Urgent transport solutions',
              'Reliable & experienced staffs',
              'Urgent transport solutions',
              'Reliable & experienced staffs',
            ],
          ),
          Space.vL,
          const Divider(),
          Space.vL,
          News(
            image: Images.blogImage3,
            date: DateTime(2023, 10, 25),
            title: 'Five things you should have ready for your broker',
            content:
                'We are dedicated in creating added value for our customers by implementing modern technology in our work.',
            bulletList: const [
              'Urgent transport solutions',
              'Reliable & experienced staffs',
              'Urgent transport solutions',
              'Reliable & experienced staffs',
            ],
          ),
          Space.vL,
          const Divider(),
          Space.vL,
          Button(
            color: ButtonColor.blue,
            text: 'More Blog',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
