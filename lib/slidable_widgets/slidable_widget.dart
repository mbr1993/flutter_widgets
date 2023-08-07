import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MySlidable extends StatefulWidget {
  const MySlidable({super.key});

  @override
  State<MySlidable> createState() => _MySlidableState();
}

class _MySlidableState extends State<MySlidable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
            startActionPane: ActionPane(
              motion: DrawerMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) {},
                  icon: Icons.phone,
                  backgroundColor: Colors.green,
                ),
                SlidableAction(
                  onPressed: (context) {},
                  icon: Icons.message,
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: DrawerMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) {},
                  icon: Icons.phone,
                  backgroundColor: Colors.green,
                ),
                SlidableAction(
                  onPressed: (context) {},
                  icon: Icons.message,
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
            child: Container(
            color: Colors.grey[300],
        child: ListTile(
        title: Text('Bobur Mannonov'),
        subtitle: Text('+998 90 001 30 60'),
        leading: Icon(Icons.person, size: 40),
      ),
    ),)
    ,
    )
    ,
    );
  }
}
