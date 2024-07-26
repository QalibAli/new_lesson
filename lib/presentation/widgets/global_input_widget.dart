import 'package:first_lesson/utils/constants/app_color.dart';
import 'package:first_lesson/utils/constants/app_paddings.dart';
import 'package:first_lesson/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class GlobalInputWidget extends StatelessWidget {
  const GlobalInputWidget({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    required this.validator,
  });

  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.lr22,
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureText,
        style: AppTextStyles.r14bl,
        decoration: InputDecoration(
          fillColor: AppColors.fillColor,
          filled: true,
          hintText: hintText,
          hintStyle: AppTextStyles.hintStyle,
          //isdense
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(color: AppColors.blue, width: 2),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.red),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
