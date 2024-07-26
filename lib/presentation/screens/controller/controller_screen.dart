import 'package:flutter/material.dart';

class ControllerScreen extends StatefulWidget {
  const ControllerScreen({super.key});

  @override
  State<ControllerScreen> createState() => _ControllerScreenState();
}

class _ControllerScreenState extends State<ControllerScreen> {
  final textController = TextEditingController();
  late String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: textController,
            decoration: const InputDecoration(
              hintText: "Username",
            ),
          ),
          ElevatedButton(
              onPressed: () {
                text = textController.text;
                // print(textController.text);
                setState(() {});
              },
              child: const Text("write text")),
          Text(text),
        ],
      ),
    );
  }
}
