import 'package:flutter/material.dart';

class AmPm extends StatelessWidget {
  final bool isAm;

  const AmPm({super.key, required this.isAm});

  @override
  Widget build(BuildContext context) {
    return Text(
      isAm ? 'am' : 'pm',
      style: const TextStyle(
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
