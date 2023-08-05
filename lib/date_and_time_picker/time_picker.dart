import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  const MyTimePicker({super.key});

  @override
  State<MyTimePicker> createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  TimeOfDay timeOfDay = TimeOfDay(hour: 8, minute: 30);

  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeOfDay.format(context).toString(),
              style: const TextStyle(fontSize: 24),
            ),
            MaterialButton(
              onPressed: _showTimePicker,
              color: Colors.deepPurple,
              child:
                  const Text("Pick me", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
