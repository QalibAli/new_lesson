import 'package:first_lesson/utils/constants/app_color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter First Lesson"),
        titleTextStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: AppColors.blue,
        ),
        backgroundColor: Colors.green,
        foregroundColor: AppColors.blue,
        leading: const Icon(
          Icons.menu,
          size: 39,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.verified_outlined,
              size: 39,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.verified_outlined,
              size: 39,
            ),
          ),
        ],
      ),
    );
  }
}
