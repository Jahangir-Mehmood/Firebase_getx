import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get inctance => Get.find();

  final pageController = PageController();
  RxInt currentIndex = RxInt(0);

void updatePageIndicator(index){}
void dotNavigationClick(index){}
void nextPage(){}
void skipPage(){}

}