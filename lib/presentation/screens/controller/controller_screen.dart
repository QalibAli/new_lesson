import 'package:flutter/material.dart';

class ControllerScreen extends StatefulWidget {
  const ControllerScreen({super.key});

  @override
  State<ControllerScreen> createState() => _ControllerScreenState();
}

class _ControllerScreenState extends State<ControllerScreen> {
  final controller = TextEditingController();
  late String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: "Username",
            ),
          ),
          ElevatedButton(
              onPressed: () {
                text = controller.text;
                setState(() {});
              },
              child: const Text("write text")),
          Text(text),
        ],
      ),
    );
  }
}
