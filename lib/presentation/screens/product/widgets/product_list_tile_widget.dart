import 'package:first_lesson/utils/constants/app_assets.dart';
import 'package:first_lesson/utils/constants/app_color.dart';
import 'package:first_lesson/utils/constants/app_paddings.dart';
import 'package:first_lesson/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProductListTileWidget extends StatelessWidget {
  const ProductListTileWidget({
    super.key,
    required this.discount,
    required this.title,
    required this.date,
    required this.image,
    required this.color,
  });

  final String discount;
  final String title;
  final String date;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPaddings.h22v22,
      width: MediaQuery.of(context).size.width,
      decoration:  BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: AppPaddings.all12,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.b24b,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(discount, style: AppTextStyles.p16b),
                const SizedBox(
                  height: 5,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                  child: ColoredBox(
                    color: AppColors.white,
                    child: Padding(
                      padding: AppPaddings.all8,
                      child: Text(
                        date,
                        style: AppTextStyles.dateTexstyle,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: AppPaddings.lr22,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    image,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
