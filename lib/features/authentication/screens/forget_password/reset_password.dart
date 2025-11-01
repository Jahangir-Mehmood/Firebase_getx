import 'package:firebase_getx/features/authentication/screens/login/login.dart';
import 'package:firebase_getx/features/authentication/screens/signup/verify_email.dart';
import 'package:firebase_getx/utils/constants/imports.dart';
import 'package:flutter/cupertino.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.offAll(() => LoginScreen()), icon: Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              Image.asset(mailSentImage, height: UDeviceHelper.getScreenWidth(context) * 0.6),
              SizedBox(height: uSpaceBtwItems),
              Text(UTexts.resetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: uSpaceBtwItems),
              Text('UnKnowPro@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: uSpaceBtwItems),
              Text(UTexts.resetPasswordSubTitle, style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: uSpaceBtwSections),
              UElevatedButton(onPressed: () => Get.to(() => VerifyEmailScreen()), child: Text(UTexts.done)),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: () {}, child: Text(UTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
