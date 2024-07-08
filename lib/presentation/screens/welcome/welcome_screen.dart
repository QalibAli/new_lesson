import 'package:first_lesson/constants/app_color.dart';
import 'package:first_lesson/constants/app_paddings.dart';
import 'package:first_lesson/constants/app_text_styles.dart';
import 'package:first_lesson/presentation/screens/welcome/widgets/welcome_buttons.dart';
import 'package:first_lesson/presentation/screens/welcome/widgets/welcome_texts.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            WelcomeTexts(),
            WelcomeButtons(),
          ],
        ),
      ),
    );
  }
}
