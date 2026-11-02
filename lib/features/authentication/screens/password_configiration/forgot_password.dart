import 'package:e_commerce_app/features/authentication/screens/password_configiration/rest_password.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// headings
              Text("Forget Password ",style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: TSizes.spaceBtWItems,),
              Text("Don't worry sometimes people can forget, enter your email and we will send you a password rest link.",style: Theme.of(context).textTheme.labelMedium),
              SizedBox(height: TSizes.spaceBtWSections*2),

              /// text field

              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText:TTexts.email
                ),
              ),

              /// submit button
              SizedBox(height: TSizes.spaceBtWItems,),

              ///Sing In Button
              SizedBox(
                width:double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      Get.off(()=>RestPassword());
                    }
                    , child: Text("Submit")
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
