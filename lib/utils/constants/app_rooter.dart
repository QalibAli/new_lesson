import 'package:flutter/material.dart';

class AppRooter {
  AppRooter._();

  static push(BuildContext context, Widget screen) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => screen,
        ),
      );
}
