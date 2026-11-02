import 'package:e_commerce_app/common/widgets/login_singup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_singup/social_buttons.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: TSizes.defaultSpace,
            right: TSizes.defaultSpace,
            bottom: TSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Let's create your account", style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: TSizes.spaceBtWSections),

              /// Form
              SignUpForm(),
              SizedBox(height: TSizes.spaceBtWSections),

              TFormDivider(dark: dark),
              SizedBox(height: TSizes.spaceBtWSections),

              /// Footer
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

