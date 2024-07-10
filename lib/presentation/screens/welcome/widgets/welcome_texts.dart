import 'package:first_lesson/constants/app_paddings.dart';
import 'package:first_lesson/constants/app_text_styles.dart';
import 'package:first_lesson/constants/app_texts.dart';
import 'package:flutter/material.dart';

class WelcomeTexts extends StatelessWidget {
  const WelcomeTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 2,
      child:  Padding(
        padding: AppPaddings.h42,
        child: Column(
          children: [
            Text(
              AppTexts.welcomeHeaderText,
              textAlign: TextAlign.center,
              style: AppTextStyles.sb35b,
            ),
            SizedBox(height: 22,),
            Text(
              AppTexts.welcomSubtitleText,
              textAlign: TextAlign.center,
              style: AppTextStyles.r14bl,
            ),
          ],
        ),
      ),
    );
  }
}
