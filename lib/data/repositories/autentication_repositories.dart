import 'package:firebase_getx/features/authentication/screens/login/login.dart';
import 'package:firebase_getx/features/authentication/screens/onboarding/onboarding.dart';
import 'package:firebase_getx/utils/constants/imports.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class AutenticationRepositories extends GetxController{
  static AutenticationRepositories get instatance => Get.find();

  final store = GetStorage();

@override
  void onInit() {

    super.onInit();
  }

@override
  void onReady() {
    FlutterNativeSplash.remove();

    screenRedirect();
  }

  void screenRedirect(){
    store.writeIfNull('isFirstTime', true);
    store.read('isFirstTime') != true ? Get.to(()=> LoginScreen()) : Get.to(()=> OnboardingScreen());

  }

}
