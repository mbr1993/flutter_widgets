import 'package:flutter/material.dart';
import 'package:flutter_widgets/drawer/first_page.dart';
import 'package:flutter_widgets/drawer/second_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text("App bar"),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              DrawerHeader(
                child: Icon(Icons.flutter_dash,
                    size: 60, color: Colors.deepPurple[900]),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FirstDrawerPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SecondDrawerPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
