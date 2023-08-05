import 'package:flutter/material.dart';

class MyRoundCorners extends StatelessWidget {
  const MyRoundCorners({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 300,
                width: 300,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(30),
              ),
            )
          ]
        ),
      ),
    );
  }
}
