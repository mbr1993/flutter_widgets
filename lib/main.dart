import 'package:flutter/material.dart';
import 'package:flutter_widgets/alert_dialog/alert_dialog.dart';
import 'package:flutter_widgets/animated_container.dart';
import 'package:flutter_widgets/tab_bar/tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAlertDialog(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
