import 'package:first_lesson/utils/constants/app_paddings.dart';
import 'package:first_lesson/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onPressed,
  });

  final String text;
  final Color backgroundColor;
  final Color foregroundColor;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: AppPaddings.lr22,
        child: SizedBox(
          height: 60,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: backgroundColor,
              foregroundColor: foregroundColor,
            ),
            child: Text(
              text,
              style: AppTextStyles.sb20w,
            ),
          ),
        ),
      ),
    );
  }
}

// button background color
// button foreground color