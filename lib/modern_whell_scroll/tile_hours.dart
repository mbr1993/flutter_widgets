import 'package:flutter/material.dart';

class MyTileHours extends StatelessWidget {
  final int hours;

  const MyTileHours({super.key, required this.hours});

  @override
  Widget build(BuildContext context) {
    return Text(
      hours.toString(),
      style: const TextStyle(
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
