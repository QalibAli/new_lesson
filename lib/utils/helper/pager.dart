import 'package:first_lesson/presentation/screens/home/home_screen.dart';
import 'package:first_lesson/presentation/screens/login/login_screen.dart';
import 'package:first_lesson/presentation/screens/product/product_screen.dart';
import 'package:first_lesson/presentation/screens/register/register_screen.dart';
import 'package:first_lesson/presentation/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class Pager {
  Pager._();

  static const Widget login = LoginScreen();
  static const Widget register = RegisterScreen();
  static const Widget home = HomeScreen();
  static const Widget welcome = WelcomeScreen();
  static const Widget product = ProductScreen();
}
