import 'package:flutter/material.dart';

class MyTileMinutes extends StatelessWidget {
  final int minutes;

  const MyTileMinutes({super.key, required this.minutes});

  @override
  Widget build(BuildContext context) {
    return Text(
      minutes < 10 ? '0$minutes' : minutes.toString(),
      style: const TextStyle(
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
