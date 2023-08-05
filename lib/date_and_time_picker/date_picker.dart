import 'package:flutter/material.dart';

class MyDataPicker extends StatefulWidget {
  const MyDataPicker({super.key});

  @override
  State<MyDataPicker> createState() => _MyDataPickerState();
}

class _MyDataPickerState extends State<MyDataPicker> {
  DateTime dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("${dateTime.day}.${dateTime.month}.${dateTime.year}", style: const TextStyle(fontSize: 30)),
            MaterialButton(
              onPressed: _showDatePicker,
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Choose date',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
