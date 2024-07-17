import 'package:first_lesson/utils/constants/app_color.dart';
import 'package:first_lesson/utils/constants/app_paddings.dart';
import 'package:first_lesson/utils/constants/app_rooter.dart';
import 'package:first_lesson/utils/constants/app_texts.dart';
import 'package:first_lesson/presentation/screens/login/login_screen.dart';
import 'package:first_lesson/presentation/screens/register/register_screen.dart';
import 'package:first_lesson/presentation/widgets/global_button.dart';
import 'package:first_lesson/utils/pager/pager.dart';
import 'package:flutter/material.dart';

class WelcomeButtons extends StatelessWidget {
  const WelcomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Padding(
            padding: AppPaddings.h42,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GlobalButton(
                  text: AppTexts.login,
                  backgroundColor: AppColors.blue,
                  foregroundColor: AppColors.white,
                  onPressed: () {
                    AppRooter.push(context, Pager.login);
                  },
                ),
                const SizedBox(
                  width: 30,
                ),
                GlobalButton(
                  text: AppTexts.register,
                  backgroundColor: AppColors.white,
                  foregroundColor: AppColors.black,
                  onPressed: () {
                    AppRooter.push(
                      context,
                      Pager.register,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//push  -- kecid
//push replacement -- kecid edib unudur
//pop - geri qayitmaq