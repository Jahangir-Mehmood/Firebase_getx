import 'package:firebase_getx/features/authentication/screens/login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get inctance => Get.find();

  final pageController = PageController();
  RxInt currentIndex = RxInt(0);

void updatePageIndicator(index){
  currentIndex.value = index;
}
void dotNavigationClick(index){
  currentIndex.value = index;
  pageController.jumpToPage(index);
}
void nextPage(){
  if(currentIndex.value == 2){
    Get.offAll(()=>LoginScreen());
    return;
  }
  currentIndex ++;
  pageController.jumpToPage(currentIndex.value);
}
void skipPage(){
  currentIndex.value == 2;
  pageController.jumpToPage(currentIndex.value);
}

}