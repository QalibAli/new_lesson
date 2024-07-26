import 'package:first_lesson/utils/constants/app_assets.dart';
import 'package:first_lesson/utils/constants/app_color.dart';
import 'package:flutter/material.dart';

class UsersModel {
  final String username;
  final String jobName;
  final String profilePhoto;
  final String status;
  final IconData icon;
  final Color color;

  UsersModel({
    required this.username,
    required this.jobName,
    required this.profilePhoto,
    required this.status,
    required this.icon,
    required this.color,
  });

  static List<UsersModel> users = [
    UsersModel(
      username: "Flutter",
      jobName: "Mobile Developer",
      profilePhoto: AppAssets.welcome,
      status: "Attented",
      icon: Icons.check_box,
      color: AppColors.green,
    ),
    UsersModel(
      username: "Rect Native",
      jobName: "Mobile Developer",
      profilePhoto: AppAssets.welcome,
      status: "Can't make it",
      icon: Icons.check_box,
      color: AppColors.red,
    ),
    UsersModel(
      username: "Messi",
      jobName: "Web Developer",
      profilePhoto: AppAssets.welcome,
      status: "Attended",
      icon: Icons.check_box,
      color: AppColors.green,
    ),
  ];
}
