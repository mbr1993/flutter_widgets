import 'package:flutter/material.dart';
import 'package:flutter_widgets/page_scrolling/page_1.dart';
import 'package:flutter_widgets/page_scrolling/page_2.dart';
import 'package:flutter_widgets/page_scrolling/page_3.dart';

class MyPageScrolling extends StatelessWidget {
  const MyPageScrolling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: PageController(),
        children: [Page1(), Page2(), Page3()],
      ),
    );
  }
}
