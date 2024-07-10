import 'package:flutter/material.dart';

import '../../widgets/global_input_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GlobalInputWidget(
            hintText: 'Email',
          ),
          SizedBox(
            height: 30,
          ),
          GlobalInputWidget(
            hintText: 'Password',
          )
        ],
      ),
    );
  }
}
