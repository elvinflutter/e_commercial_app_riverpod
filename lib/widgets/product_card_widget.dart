import 'package:e_commercial_app_riverpod/constants/themes.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
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
                  child: Image.asset('assets/products/airpods.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 0, left: 10, right: 10, bottom: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Product name',
                      style: KAppTheme.kCardHeadingTextStyle,
                    ),
                    Text(
                      'Short decription product',
                      style: KAppTheme.kBodyText,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$543',
                            style: KAppTheme.kCardHeadingTextStyle,
                          ),
                          Icon(
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
        ),
      ),
    );
  }
}