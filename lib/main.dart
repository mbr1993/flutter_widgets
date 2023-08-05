import 'package:flutter/material.dart';
import 'package:flutter_widgets/animated_icon/animated_icon.dart';
import 'package:flutter_widgets/slider/slider.dart';
import 'package:flutter_widgets/stack_widget/stack_widget.dart';
import 'package:flutter_widgets/text_input/text_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySlider(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
