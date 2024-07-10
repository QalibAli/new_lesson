import 'package:first_lesson/constants/app_color.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const sb20w = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const sb35b = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.w600,
    color: AppColors.blue,
  );

  static const r14bl = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static const hintStyle = TextStyle(
    color: AppColors.hintColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
