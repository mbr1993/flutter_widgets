import 'package:flutter/material.dart';

class FirstDrawerPage extends StatelessWidget {
  const FirstDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Container(
          child: Text(
            "This is a first page!",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
