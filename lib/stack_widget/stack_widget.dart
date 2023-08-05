import 'package:flutter/material.dart';

class MyStackWidget extends StatelessWidget {
  const MyStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              color: Colors.orange[100],
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.orange[200],
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.orange[400],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.orange[600],
            )
          ],
        ),
      ),
    );
  }
}
