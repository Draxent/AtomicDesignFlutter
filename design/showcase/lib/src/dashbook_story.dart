import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:dashbook/dashbook.dart';

abstract class StoryWidget {
  Widget call(DashbookContext context);
}

class StoryScaffold extends StatelessWidget {
  const StoryScaffold({
    required this.child,
    this.withBlueBox = false,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final bool withBlueBox;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: withBlueBox
                  ? ColoredBox(
                      color: AppColors.primary2,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: child,
                      ),
                    )
                  : child,
            ),
          ),
        ),
      ),
    );
  }
}
