import 'package:e_commercial_app_riverpod/constants/themes.dart';
import 'package:e_commercial_app_riverpod/controllers/product_controller.dart';
import 'package:e_commercial_app_riverpod/widgets/ads_baner_widget.dart';
import 'package:e_commercial_app_riverpod/widgets/chip_widget.dart';
import 'package:e_commercial_app_riverpod/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productNotifireProvider);
    final currentIndex = ref.watch(currentIndexProvider);
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
            SizedBox(
              height: 300,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    ProductCardWidget(productIndex: index),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 0, left: 20, right: 20, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured Products',
                    style: KAppTheme.kHeadingOne,
                  ),
                  Text(
                    'See all',
                    style: KAppTheme.kSeeAllText,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: MasonryGridView.builder(
                itemCount: products.length,
                shrinkWrap: true,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                itemBuilder: (context, index) => SizedBox(
                  height: 260,
                  child: ProductCardWidget(
                    productIndex: index,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) =>
            ref.read(currentIndexProvider.notifier).update((state) => value),
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kSecondaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favorite',
            activeIcon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: 'Location',
            activeIcon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Notification',
            activeIcon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
            activeIcon: Icon(Icons.person_2),
          ),
        ],
      ),
    );
  }
}
