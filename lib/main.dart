import 'package:flutter/material.dart';

import 'container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyContainer(),
    );
  }
}
