import 'package:first_lesson/presentation/screens/controller/controller_screen.dart';
import 'package:first_lesson/presentation/screens/welcome/welcome_screen.dart';
import 'package:first_lesson/utils/pager/pager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Pager.login,
    );
  }
}
//rooter