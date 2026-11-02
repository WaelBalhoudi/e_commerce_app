import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class RestPassword extends StatelessWidget {
  const RestPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child:Column(
            children: [
              /// image
              Image(image: AssetImage(TImages.deliveredEmailIllustration),width: THelperFunction.screenWidth()*0.6,),
              SizedBox(height: TSizes.spaceBtWSections,),
              /// title & subtitle
              Text("Password Reset Email Sent",style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtWItems,),
              Text("Your account security is our priority we've sent your a secure link to safely change your password and keep your account protected.",style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtWSections),


              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=>Get.off(()=>LoginScreen()),
                  child: Text("Done"),
                ),
              ),
              SizedBox(height: TSizes.spaceBtWItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: Text("Resend Email"),
                ),
              ),
            ],
          )
        )
      ),
    );
  }
}
