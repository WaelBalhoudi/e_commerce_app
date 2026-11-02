import 'package:e_commerce_app/features/authentication/screens/password_configiration/forgot_password.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtWSections,),
          child: Column(
            children: [
              ///email input
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText:TTexts.email
                ),
              ),
              SizedBox(height: TSizes.spaceBtwInputFields,),

              ///password input

              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText:TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash ),
                ),
              ),
              SizedBox(height: TSizes.spaceBtwInputFields/2,),

              ///Remember me & forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Remember me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      Text("Remember Me")

                    ],
                  ),


                  ///Forgot Password
                  TextButton(
                      onPressed: (){
                          Get.to(()=>ForgotPassword());
                      },

                      child: Text("Forgot Password")
                  ),


                ],
              ),
              SizedBox(height: TSizes.spaceBtWItems,),

              ///Sing In Button
              SizedBox(
                width:double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      Get.to(() => NavigationMenu()); // Uncomment to navigate to LoginScreen

                    }
                    , child: Text("Sign In")
                ),
              ),
              SizedBox(height: TSizes.spaceBtWItems,),

              /// Create Account Button
              SizedBox(
                width:double.infinity,
                child: OutlinedButton(
                    onPressed: (){
                      Get.to(() => SignupScreen()); // Uncomment to navigate to LoginScreen

                    }
                    , child: Text("Create an Account")
                ),
              ),

            ],
          ),
        )
    );
  }
}
