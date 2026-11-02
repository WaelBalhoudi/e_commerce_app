import 'package:e_commerce_app/common/styles/spacing_style.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SuccessScreen extends StatelessWidget {
  final String image,title,subtitle,email;
  final VoidCallback? onPressed;
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle,  this.onPressed, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// image
              Image(image: AssetImage(image),width: THelperFunction.screenWidth()*0.6,),
              SizedBox(height: TSizes.spaceBtWSections,),
              /// title & subtitle
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtWItems,),
              Text(email,style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtWItems),

              Text(subtitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),

              /// button
              SizedBox(height: TSizes.spaceBtWSections),
              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=>onPressed,
                  child: Text("Continue"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
