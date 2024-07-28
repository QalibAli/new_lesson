import 'package:first_lesson/data/model/products_model.dart';
import 'package:first_lesson/presentation/screens/product/widgets/product_list_tile_widget.dart';
import 'package:first_lesson/utils/constants/app_paddings.dart';
import 'package:flutter/material.dart';

class ProductListViewWidget extends StatelessWidget {
  const ProductListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final productsModel = ProductsModel.products;
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: AppPaddings.all6,
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: productsModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final products = productsModel[index];
                  return ProductListTileWidget(
                    discount: products.discount,
                    title: products.title,
                    date: products.date,
                    image: products.image,
                    color: products.color,
                  ); //ListTile
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
