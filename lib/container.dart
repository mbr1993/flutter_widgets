import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1,
                color: Colors.grey[500]!,
              ),
              BoxShadow(
                offset: Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
