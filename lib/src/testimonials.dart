import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SectionTestimonials extends StatelessWidget {
  const SectionTestimonials({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _SectionTestimonialsHeader(),
            Space.vXL,
            _SectionTestimonialsReviews(),
          ],
        ),
      ),
    );
  }
}

class _SectionTestimonialsHeader extends StatelessWidget {
  const _SectionTestimonialsHeader();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Review.size.width * 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Heading(
            title: 'Testimonial',
            heading: 'What Our Customer Say',
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Images.testimonialsPrevious,
              Space.hS,
              Images.testimonialsNext,
            ],
          )
        ],
      ),
    );
  }
}

class _SectionTestimonialsReviews extends StatelessWidget {
  const _SectionTestimonialsReviews();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Review(
          userImage: Images.testimonialsUser1,
          userName: 'Kathleen Smith',
          userCompany: 'Fuel Company',
          review:
              'Leverage agile frameworks to provide a robust synopsis for strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.',
        ),
        Review(
          background: ReviewBackground.dark,
          userImage: Images.testimonialsUser2,
          userName: 'John Martin',
          userCompany: 'Restoration Company',
          review:
              'Leverage agile frameworks to provide a robust synopsis for strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.',
        ),
      ],
    );
  }
}
