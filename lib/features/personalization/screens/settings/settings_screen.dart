import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/features/personalization/screens/address/address.dart';
import 'package:e_commerce_app/features/personalization/screens/settings/widgets/setting_menu_item.dart';
import 'package:e_commerce_app/features/personalization/screens/settings/widgets/user_profile.dart';
import 'package:e_commerce_app/features/shop/screens/cart/cart.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/order/order.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      "Settings",
                      style: Theme.of(context).textTheme.headlineMedium!.apply(
                        color: TColors.textWhite.withOpacity(.9),
                      ),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtWItems / 2),
                  TUserProfile(),
                  SizedBox(height: TSizes.spaceBtWSections),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// account settings
                  TSectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  SettingMenuItem(
                    icon: Iconsax.safe_home,
                    title: "My Addresses",
                    subtitle: "Set Shopping Delivery address",
                    onTap: () =>Get.to(Address()),
                  ),
                  SettingMenuItem(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subtitle: "Add, remove products and move to checkout",
                    onTap: () =>Get.to(Cart()),
                  ),
                  SettingMenuItem(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subtitle: "In-progress and Completed Orders",
                    onTap: ()  =>Get.to(Order()),
                  ),
                  SettingMenuItem(
                    icon: Iconsax.bank,
                    title: "My Account",
                    subtitle: "Withdraw balance to registered bank account",
                    onTap: () {},
                  ),
                  SettingMenuItem(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subtitle: "List of all the discounted coupons",
                    onTap: () {},
                  ),
                  SettingMenuItem(
                    icon: Iconsax.notification,
                    title: "Notification",
                    subtitle: "Set any kind of notification message",
                    onTap: () {},
                  ),
                  SettingMenuItem(
                    icon: Iconsax.security_card,
                    title: "Account privacy",
                    subtitle: "Manage data usage and connected accounts",
                    onTap: () {},
                  ),

                  /// app settings
                  SizedBox(height: TSizes.spaceBtWSections),
                  TSectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  SettingMenuItem(
                    icon: Iconsax.document_upload,
                    title: "Account privacy",
                    subtitle: "Manage data usage and connected accounts",
                    onTap: () {},
                  ),
                  SettingMenuItem(
                    icon: Iconsax.location,
                    title: "Geolocation",
                    subtitle: "Set recommendation based on location",
                    onTap: () {},
                    trailing: Switch(value: true, onChanged:(value){}),
                  ),
                  SettingMenuItem(
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    subtitle: "Search result is save for all ages",
                    onTap: () {},
                    trailing: Switch(value: false, onChanged:(value){}),
                  ),
                  SettingMenuItem(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subtitle: "Set image quality to be seen",
                    onTap: () {},
                    trailing: Switch(value: true, onChanged:(value){}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
