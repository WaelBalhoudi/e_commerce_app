import 'package:e_commerce_app/features/personalization/screens/settings/settings_screen.dart';
import 'package:e_commerce_app/features/shop/screens/home/home.dart';
import 'package:e_commerce_app/features/shop/screens/store/store.dart';
import 'package:e_commerce_app/features/shop/screens/wishlist/wishlist_screen.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunction.isDarkMode(context);

    return Theme(
      data: Theme.of(context).copyWith(
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return TextStyle(color: TColors.primary);
            }
            return TextStyle(color: Colors.grey);
          }),
        ),
      ),
      child: Scaffold(
        bottomNavigationBar: Obx(
              () => Container(
            decoration: BoxDecoration(
              color: dark ? TColors.black : Colors.white,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: dark ? TColors.black.withOpacity(0.2) : Colors.grey.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: NavigationBar(
              height: 64,
              elevation: 0,
              backgroundColor: Colors.transparent,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) => controller.selectedIndex.value = index,
              indicatorColor: dark
                  ? TColors.textWhite.withOpacity(0.1)
                  : TColors.dark.withOpacity(0.1),
              destinations: const [
                NavigationDestination(
                  icon: Icon(Iconsax.home, color: Colors.grey),
                  selectedIcon: Icon(Iconsax.home, color: TColors.primary),
                  label: 'Home',

                ),
                NavigationDestination(
                  icon: Icon(Iconsax.shop, color: Colors.grey),
                  selectedIcon: Icon(Iconsax.shop, color: TColors.primary),
                  label: 'Store',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.heart, color: Colors.grey),
                  selectedIcon: Icon(Iconsax.heart, color: TColors.primary),
                  label: 'Wishlist',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.user, color: Colors.grey),
                  selectedIcon: Icon(Iconsax.user, color: TColors.primary),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
        body: Obx(
              () => controller.screens[controller.selectedIndex.value],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Home(),
    const StoreScreen(),
    const WishlistScreen(),// Updated to use TColors
    const SettingsScreen(), // Updated to use TColors
  ];
}