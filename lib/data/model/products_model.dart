import 'package:first_lesson/utils/constants/app_assets.dart';
import 'package:first_lesson/utils/constants/app_color.dart';
import 'package:flutter/material.dart';

class ProductsModel {
  final String title;
  final String discount;
  final String date;
  final String image;
  final Color color;

  ProductsModel( {
    required this.color,
    required this.title,
    required this.discount,
    required this.date,
    required this.image,
  });

  static List<ProductsModel> products = [
    ProductsModel(
      title: "Flash Sale",
      discount: "sale up to 60%",
      date: '25 - 30 June',
      image: AppAssets.welcome, color: AppColors.boxColor,
    ),
    ProductsModel(
      title: "Sale",
      discount: "sale up to 20%",
      date: '12 - 18 August',
      image: AppAssets.welcome, color: AppColors.boxColor2,
    ),
  ];
}
