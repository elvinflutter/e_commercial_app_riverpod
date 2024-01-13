import 'package:e_commercial_app_riverpod/constants/themes.dart';
import 'package:e_commercial_app_riverpod/widgets/ads_baner_widget.dart';
import 'package:e_commercial_app_riverpod/widgets/chip_widget.dart';
import 'package:e_commercial_app_riverpod/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SvgPicture.asset(
          'assets/general/store_brand_white.svg',
          width: 150,
          colorFilter: const ColorFilter.mode(
            kWhiteColor,
            BlendMode.srcIn,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 8,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.local_mall_outlined,
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: AdsBanerWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ChipWidget(
                      label: 'All',
                      avatar: Icons.smartphone_outlined,
                    ),
                    ChipWidget(
                      label: 'Computers',
                      avatar: Icons.laptop_chromebook,
                    ),
                    ChipWidget(
                      label: 'Headsets',
                      avatar: Icons.headset_outlined,
                    ),
                    ChipWidget(
                      label: 'Speakers',
                      avatar: Icons.speaker,
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 0, left: 20, right: 20, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hot Sales',
                    style: KAppTheme.kHeadingOne,
                  ),
                  Text(
                    'See all',
                    style: KAppTheme.kSeeAllText,
                  ),
                ],
              ),
            ),
            ProductCardWidget(),
          ],
        ),
      ),
    );
  }
}
