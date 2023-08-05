import 'dart:async';

import 'package:flutter/material.dart';

class MyTimer extends StatefulWidget {
  const MyTimer({super.key});

  @override
  State<MyTimer> createState() => _MyTimerState();
}

class _MyTimerState extends State<MyTimer> {
  int timeLeft = 5;

  void _startCountDown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (timeLeft > 0) {
          timeLeft--;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeLeft == 0 ? "Done" : timeLeft.toString(),
              style: TextStyle(fontSize: 50),
            ),
            MaterialButton(
              onPressed: _startCountDown,
              child: Text("Start"),
              color: Colors.purple,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
