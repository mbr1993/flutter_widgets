import 'package:flutter/material.dart';

class MyExpended extends StatelessWidget {
  const MyExpended({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
             child: Container(
              color: Colors.deepOrange,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.lightBlue,
            ),
          ),
        ],
      ),
    );
  }
}
