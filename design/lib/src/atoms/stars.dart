import 'package:flutter/material.dart';

import '../core/core.dart';

enum NumStars {
  n1,
  n2,
  n3,
  n4,
  n5,
}

class Stars extends StatelessWidget {
  const Stars({
    this.number = NumStars.n5,
    super.key,
  });

  final NumStars number;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(number.index + 1, (_) => const _Star())
          .toList(growable: false),
    );
  }
}

class _Star extends StatelessWidget {
  const _Star();

  @override
  Widget build(BuildContext context) {
    return Images.testimonialsStar;
  }
}
