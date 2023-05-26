import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../core/core.dart';

class DateView extends StatelessWidget {
  const DateView({
    required this.date,
    super.key,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Images.blogCalendar,
        Space.vS,
        Text(
          date.day.toString().padLeft(2, '0'),
          style: context.displaySmall,
        ),
        Text(DateFormat.MMMM().format(date)),
      ],
    );
  }
}
