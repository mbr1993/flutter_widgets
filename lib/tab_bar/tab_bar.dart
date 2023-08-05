import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text("App Bar")),
        body: Column(
          children: [
             TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home, color: Colors.deepPurple)),
                Tab(icon: Icon(Icons.favorite, color: Colors.deepPurple)),
                Tab(icon: Icon(Icons.settings, color: Colors.deepPurple)),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                Container(child: Center(child: Text("1st Tab"))),
                Container(child: Center(child: Text("2st Tab"))),
                Container(child: Center(child: Text("3st Tab"))),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
