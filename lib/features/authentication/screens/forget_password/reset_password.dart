import 'package:firebase_getx/features/authentication/screens/login/login.dart';
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
          child: Column(children: [
            Image.asset(UImages.mailSentImage,height: UDeviceHelper.getScreenWidth(context) * 0.6),
            SizedBox(height: USizes.spaceBtwItems),
            Text(UTexts.resetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: USizes.spaceBtwItems),
            Text('UnKnowPro@gmail.com',style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(height: USizes.spaceBtwItems),
            Text(UTexts.resetPasswordSubTitle,style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(height: USizes.spaceBtwSections),
            UElevatedButton(onPressed: (){}, child: Text(UTexts.done)),
            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){}, child: Text(UTexts.resendEmail)))
          ]),
        ),
      ),
    );
  }
}
