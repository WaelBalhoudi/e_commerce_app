import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{



  static OnBoardingController get instance => Get.find();

  // Variables
  late PageController pageController;
  var currentPageIndex = 0.0.obs;

  @override
  void onInit() {
  pageController = PageController();
  super.onInit();
  }

  // Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page
  void dotNavigationClick(index) {
  currentPageIndex.value = index;
  pageController.jumpToPage(index);
  }

  // Update Current Index & jump to next page
  void nextPage() {
  if (currentPageIndex.value == 2) {
   Get.to(() => LoginScreen()); // Uncomment to navigate to LoginScreen
  return;
  }
  currentPageIndex.value++;
  pageController.jumpToPage(currentPageIndex.value.toInt());
  }
  /// update current index & jump to the last page
  void skipPage(){
    currentPageIndex.value=2;
    pageController.jumpToPage(2);
  }

  @override
  void dispose() {
  pageController.dispose();
  super.dispose();
  }



}