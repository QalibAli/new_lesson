import 'package:first_lesson/presentation/screens/product/widgets/product_list_view_widget.dart';
import 'package:first_lesson/utils/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: const Column(
        children: [
          ProductListViewWidget(),
        ],
      ),
    );
  }
}
