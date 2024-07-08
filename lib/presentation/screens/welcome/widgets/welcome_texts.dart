import 'package:first_lesson/constants/app_paddings.dart';
import 'package:first_lesson/constants/app_text_styles.dart';
import 'package:first_lesson/constants/app_texts.dart';
import 'package:flutter/material.dart';

class WelcomeTexts extends StatelessWidget {

  const WelcomeTexts({ super.key });

   @override
   Widget build(BuildContext context) {
       return const Padding(
              padding: AppPaddings.lr42,
              child: Column(
                children: [
                  Text(
                    AppTexts.welcomeHeaderText,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.sb35b,
                  ),
                  Text(
                    AppTexts.welcomSubtitleText,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.r14bl,
                  ),
                ],
              ),
            );
  }
}