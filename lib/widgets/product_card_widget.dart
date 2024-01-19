import 'package:e_commercial_app_riverpod/constants/themes.dart';
import 'package:e_commercial_app_riverpod/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductCardWidget extends ConsumerWidget {
  const ProductCardWidget({
    super.key,
    required this.productIndex,
  });

  final int productIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productNotifireProvider);
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kLightBackground,
              ),
              child: Image.asset(product[productIndex].imgUrl),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product[productIndex].title,
                  style: KAppTheme.kCardHeadingTextStyle,
                ),
                Text(
                  product[productIndex].shortDescription,
                  style: KAppTheme.kBodyText,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ ${product[productIndex].price}',
                        style: KAppTheme.kCardHeadingTextStyle,
                      ),
                      const Icon(
                        Icons.add_circle,
                        size: 32,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
