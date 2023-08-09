import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyPercentIndicator extends StatefulWidget {
  const MyPercentIndicator({super.key});

  @override
  State<MyPercentIndicator> createState() => _MyPercentIndicatorState();
}

class _MyPercentIndicatorState extends State<MyPercentIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
              radius: 150,
              animation: true,
              animationDuration: 1000,
              lineWidth: 20,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade100,
              percent: .4,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text('40%', style: TextStyle(fontSize: 35)),
            ),
            LinearPercentIndicator(
              lineHeight: 10,
              percent: 0.3,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade100,
              animationDuration: 1000,
              animation: true,
            )
          ],
        ),
      ),
    );
  }
}
