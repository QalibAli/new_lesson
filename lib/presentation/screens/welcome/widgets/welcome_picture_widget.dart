import 'package:first_lesson/utils/constants/app_assets.dart';
import 'package:first_lesson/utils/constants/app_paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomePictureWidget extends StatelessWidget {
  const WelcomePictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: AppPaddings.h22v50,
        child: Image.asset(AppAssets.welcome),
      ),
    );
  }
}
