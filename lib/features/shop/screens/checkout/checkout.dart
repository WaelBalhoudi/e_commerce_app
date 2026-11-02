import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/coupon_code.dart';
import 'package:e_commerce_app/features/shop/screens/home/home.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TCartItems(dark: dark, showAddRemoveButtons: false),
              SizedBox(height: TSizes.spaceBtWSections),
              TCouponCode(dark: dark),
              SizedBox(height: TSizes.spaceBtWSections),

              TRoundedContainer(
                padding: EdgeInsets.all(TSizes.padding_small),
                showBorder: true,
                backgroundColor: dark ? TColors.black : Colors.white,
                child: Column(
                  children: [
                    /// Pricing
                    BillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtWItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtWItems),

                    /// Payment Methods
                    BillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtWItems),

                    /// Address
                    BillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed:
              () => Get.to(
                SuccessScreen(
                  image: TImages.staticSuccessIllustration,
                  title: "Payment Success !",
                  subtitle: "Your item will be shipped soon!", email: '',
                  onPressed:()=> Get.to(NavigationMenu()),
                ),
              ),
          child: Text("Checkout \$1500"),
        ),
      ),
    ); 
  }
}
