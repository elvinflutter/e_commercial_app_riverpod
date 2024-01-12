import 'package:e_commercial_app_riverpod/constants/themes.dart';
import 'package:flutter/material.dart';

class AdsBanerWidget extends StatelessWidget {
  const AdsBanerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Apple Store',
                  style: KAppTheme.kBigTitle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                      'Find the Apple product and accessories you’re looking for',
                      style: KAppTheme.kBodyText),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Shop new Year',
                    style: TextStyle(
                      color: kThirdColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset('assets/general/landing.png'),
        ],
      ),
    );
  }
}
