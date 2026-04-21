import 'package:firebase_getx/features/authentication/screens/login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController {
  static OnboardingController get inctance => Get.find();

  final pageController = PageController();
  RxInt currentIndex = RxInt(0);

  final store = GetStorage();

  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentIndex.value == 2) {
      store.write('isFirstTime', false);
      Get.offAll(() => LoginScreen());
      return;
    }
    currentIndex++;
    pageController.jumpToPage(currentIndex.value);
  }

  void skipPage() {
    currentIndex.value == 2;
    pageController.jumpToPage(currentIndex.value);
  }
}
