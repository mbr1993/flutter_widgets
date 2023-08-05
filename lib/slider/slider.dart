import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(_currentValue.toString(), style: TextStyle(fontSize: 25)),
          Slider(
            min: 0,
            max: 100,
            divisions: 100,
            value: _currentValue,
            label: _currentValue.toString(),
            activeColor: Colors.blue,
            inactiveColor: Colors.lightBlueAccent,
            onChanged: (double value) {
              setState(() {
                _currentValue = value;
              });
            },
          )
        ],
      ),
    );
  }
}
