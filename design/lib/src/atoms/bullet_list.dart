import 'package:flutter/material.dart';

import '../core/core.dart';

class BulletList extends StatelessWidget {
  const BulletList({
    required this.list,
    super.key,
  });

  final List<String> list;

  static const symbol = '•';

  @override
  Widget build(BuildContext context) {
    final style = context.bodyMedium.black;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: list
          .map((e) => Text('$symbol $e', style: style))
          .toList(growable: false),
    );
  }
}
