
import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onBoarding_circular_btn.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onBoarding_skip.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onBoarind_dot_navigation.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/on_boarding_page.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(

        children: [
          //Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator ,
            children: [
              OnBoardingPage(image: TImages.onBoardingImage1, title: TTexts.onboardingTitle1,subTitle: TTexts.onboardingSubTitle1,),
              OnBoardingPage(image: TImages.onBoardingImage2, title: TTexts.onboardingTitle2,subTitle: TTexts.onboardingSubTitle2,),
              OnBoardingPage(image: TImages.onBoardingImage3, title: TTexts.onboardingTitle3,subTitle: TTexts.onboardingSubTitle3,),
            ],
          ),

          //Skip Button
          OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          // Circular Button
          OnBoardingCircularBtn()

        ],
      ),
    );
  }
}





