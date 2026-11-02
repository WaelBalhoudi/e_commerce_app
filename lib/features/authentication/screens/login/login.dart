import 'package:e_commerce_app/common/styles/spacing_style.dart';
import 'package:e_commerce_app/common/widgets/login_singup/form_divider.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app/common/widgets/login_singup/social_buttons.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);

    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding:TSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                /// log,title & subtitle
                TLoginHeader(dark: dark),
                /// form
                TLoginForm(),
                ///Divider
                TFormDivider(dark: dark),
                SizedBox(height: TSizes.spaceBtWSections,),
                ///footer
                TSocialButtons()
              ],
            ),
          ),
        ),
    );
  }


}




