import 'package:flutter/material.dart';
import 'package:dashbook/dashbook.dart';

abstract class StoryWidget {
  Widget call(DashbookContext context);
}

class StoryScaffold extends StatelessWidget {
  const StoryScaffold({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
