import 'package:flutter/material.dart';

import '../core/core.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('TRY', style: context.buttonTextStyle),
    );
  }
}
