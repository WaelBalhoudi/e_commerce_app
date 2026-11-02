import 'package:e_commerce_app/common/styles/spacing_style.dart';
import 'package:e_commerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.offAll(()=>LoginScreen()), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// image
                Image(image: AssetImage(TImages.deliveredEmailIllustration),width: THelperFunction.screenWidth()*0.6,),
                SizedBox(height: TSizes.spaceBtWSections,),
              /// title & subtitle
              Text("Verify your email  address!",style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtWItems,),
              Text("waelbalhoudi@gmail.com",style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtWItems),

              Text("Congratulations Your Account Awaits: Verify Your Email to Start Shopping and Experience a World of Unrivaled Deals and Personalized Offers.",style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),

              /// button
              SizedBox(height: TSizes.spaceBtWSections),

              /// Sign Up Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=>Get.to(()=>SuccessScreen(
                      image: TImages.verifyIllustration,
                      title: "Your account successfully created!",
                      subtitle: "welcome to your ultimate shopping destination your account is created. unleash the job of seamless online shopping!",
                      email: "waelbalhoudijjj@gmail.com",
                    onPressed: ()=> Get.to(()=>LoginScreen()),
                  )),
                  child: Text("Continue"),
                ),
              ),
              SizedBox(height: TSizes.spaceBtWItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: ()=>Get.to(()=>VerifyEmailScreen()),
                  child: Text("Resend Email"),
                ),
              ),

            ],


          ),
        ),

      ),
    );
  }
}
