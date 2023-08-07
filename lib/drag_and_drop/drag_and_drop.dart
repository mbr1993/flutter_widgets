import 'package:flutter/material.dart';

class MyDragAndDrop extends StatefulWidget {
  const MyDragAndDrop({super.key});

  @override
  State<MyDragAndDrop> createState() => _MyDragAndDropState();
}

class _MyDragAndDropState extends State<MyDragAndDrop> {
  final List myTiles = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'];

  void updateTiles(int oldIndex, int newIndex) {
    setState(() {
      final tile = myTiles.removeAt(oldIndex);
      myTiles.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Drag And Drop List"),
      ),
      body: ReorderableListView(
        onReorder: (oldIndex, newIndex) => updateTiles(oldIndex, newIndex),
        children: [
          for (final tile in myTiles)
            ListTile(
              title: Text(tile),
              key: ValueKey(tile),
            ),
        ],
      ),
    );
  }
}
