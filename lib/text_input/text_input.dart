import 'package:flutter/material.dart';

class MyTextInput extends StatefulWidget {
  const MyTextInput({super.key});

  @override
  State<MyTextInput> createState() => _MyTextInputState();
}

class _MyTextInputState extends State<MyTextInput> {
  final _textEditingController = TextEditingController();
  String userInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(child: Text(userInput)),
            ),
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: "Type here",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textEditingController.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  userInput = _textEditingController.text;
                });
              },
              color: Colors.deepPurple,
              textColor: Colors.white,
              child: const Text("Send"),
            )
          ],
        ),
      ),
    );
  }
}
