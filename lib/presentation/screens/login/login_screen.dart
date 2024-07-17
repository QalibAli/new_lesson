import 'package:first_lesson/presentation/widgets/global_button.dart';
import 'package:first_lesson/utils/constants/app_color.dart';
import 'package:first_lesson/utils/constants/app_rooter.dart';
import 'package:first_lesson/utils/constants/app_texts.dart';
import 'package:first_lesson/utils/pager/pager.dart';
import 'package:flutter/material.dart';

import '../../widgets/global_input_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> key = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        key: key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlobalInputWidget(
              hintText: 'Email',
              controller: emailController,
              validator: (v) {
                if (v!.isEmpty) {
                  return "xananı doldurun";
                }
              },
              obscureText: false,
            ),
            const SizedBox(
              height: 30,
            ),
            GlobalInputWidget(
              hintText: 'Password',
              controller: passwordController,
              validator: (v) {
                if (v!.length < 8) {
                  return "8+ simvol istifade edin";
                }
              },
              obscureText: true,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                GlobalButton(
                  text: AppTexts.login,
                  backgroundColor: AppColors.blue,
                  foregroundColor: AppColors.white,
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      AppRooter.push(context, Pager.home);
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
