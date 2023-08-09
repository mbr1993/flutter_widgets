import 'package:flutter/material.dart';
import 'package:flutter_widgets/drag_and_drop/drag_and_drop.dart';
import 'package:flutter_widgets/percent_indicator/percent_indicator.dart';

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
      home: MyPercentIndicator(),
    );
  }
}
