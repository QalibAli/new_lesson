import 'package:first_lesson/presentation/widgets/global_button.dart';
import 'package:first_lesson/utils/constants/app_color.dart';
import 'package:first_lesson/utils/constants/app_rooter.dart';
import 'package:first_lesson/utils/constants/app_texts.dart';
import 'package:first_lesson/utils/helper/pager.dart';
import 'package:flutter/material.dart';

import '../../widgets/global_input_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final globalKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        key: globalKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlobalInputWidget(
              hintText: 'Email',
              obscureText: false,
              controller: emailController,
              validator: (v) {
                if (v!.isEmpty) {
                  return 'Boslugu doldurun';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            GlobalInputWidget(
              hintText: 'Password',
              obscureText: true,
              controller: passwordController,
              validator: (v) {
                if (v!.isEmpty) {
                  return 'Boslugu doldurun';
                } else if (v.length <= 8) {
                  return 'uzunluq 8 den cox olmalidi';
                }
                return null;
              },
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
                    if(globalKey.currentState!.validate()){
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
