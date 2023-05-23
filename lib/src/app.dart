import 'package:design/design.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atomic Design',
      theme: AppThemeData.theme,
      home: Scaffold(
        body: Column(
          children: [
            const MenuHeader(),
            Button(
              text: 'Some Text',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
