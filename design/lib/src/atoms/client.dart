import 'package:flutter/material.dart';

class Client extends StatelessWidget {
  const Client({
    required this.background,
    required this.logo,
    super.key,
  });

  final Image background;
  final Image logo;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Stack(
        children: [
          background,
          Positioned.fill(
            child: Center(
              child: logo,
            ),
          ),
        ],
      ),
    );
  }
}
