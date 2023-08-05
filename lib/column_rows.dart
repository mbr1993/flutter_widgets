import 'package:flutter/material.dart';

class MyColumnAndRows extends StatelessWidget {
  const MyColumnAndRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blue[600],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue[500],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue[400],
          )
        ],
      ),
    );
  }
}
