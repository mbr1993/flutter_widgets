import 'package:flutter/material.dart';
import 'package:flutter_widgets/modern_whell_scroll/am_pm.dart';
import 'package:flutter_widgets/modern_whell_scroll/tile_hours.dart';
import 'package:flutter_widgets/modern_whell_scroll/tile_minutes.dart';

class MyModernWheelScroll extends StatefulWidget {
  const MyModernWheelScroll({super.key});

  @override
  State<MyModernWheelScroll> createState() => _MyModernWheelScrollState();
}

class _MyModernWheelScrollState extends State<MyModernWheelScroll> {
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    _controller = FixedExtentScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //hours
          SizedBox(
            width: 50,
            child: ListWheelScrollView.useDelegate(
              controller: _controller,
              itemExtent: 50,
              perspective: 0.01,
              diameterRatio: 2.5,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 13,
                builder: (BuildContext context, int index) {
                  return MyTileHours(
                    hours: index,
                  );
                },
              ),
            ),
          ),

          //minutes
          SizedBox(
            width: 50,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.01,
              diameterRatio: 2.5,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 60,
                builder: (BuildContext context, int index) {
                  return MyTileMinutes(
                    minutes: index,
                  );
                },
              ),
            ),
          ),

          SizedBox(
            width: 50,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.01,
              diameterRatio: 2.5,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 2,
                builder: (BuildContext context, int index) {
                  if (index == 0) {
                    return AmPm(isAm: true);
                  } else {
                    return AmPm(isAm: false);
                  }
                  ;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
