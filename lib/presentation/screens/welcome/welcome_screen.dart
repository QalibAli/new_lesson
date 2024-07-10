import 'package:first_lesson/presentation/screens/welcome/widgets/welcome_buttons.dart';
import 'package:first_lesson/presentation/screens/welcome/widgets/welcome_picture_widget.dart';
import 'package:first_lesson/presentation/screens/welcome/widgets/welcome_texts.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          WelcomePictureWidget(),
          WelcomeTexts(),
          WelcomeButtons(),
        ],
      ),
    );
  }
}
