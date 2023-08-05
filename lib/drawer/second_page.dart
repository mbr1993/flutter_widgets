import 'package:flutter/material.dart';

class SecondDrawerPage extends StatelessWidget {
  const SecondDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          child: Text(
            "This is a second page!",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
