import 'package:flutter/material.dart';
import 'package:flutter_widgets/date_and_time_picker/date_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDataPicker(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
