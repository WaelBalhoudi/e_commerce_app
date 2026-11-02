import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// First and last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: TSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),

          SizedBox(height: TSizes.spaceBtwInputFields),

          /// Phone number
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: "Phone Number",
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          /// Password input
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          /// Terms & conditions checkbox
          TermsAndConditionsCheckbox(),
          SizedBox(height: TSizes.spaceBtWSections),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: ()=>Get.to(()=>VerifyEmailScreen()),
              child: Text("Sign Up"),
            ),
          ),
          SizedBox(height: TSizes.spaceBtWItems),

          /// Sign in link (replaces the button)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I already have an account! ",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to LoginScreen or perform sign-in action
                  Get.to(() => LoginScreen()); // Uncomment and replace with your LoginScreen
                },
                child: Text(
                  "Sign in",
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                    decoration: TextDecoration.underline,
                    color: TColors.primary,
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

