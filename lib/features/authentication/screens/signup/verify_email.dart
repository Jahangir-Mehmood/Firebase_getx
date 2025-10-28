import 'package:firebase_getx/common/widgets/screens/success_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.offAll(() => ()), icon: Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              Image.asset(UImages.mailSentImage, height: UDeviceHelper.getScreenWidth(context) * 0.6),
              SizedBox(height: USizes.spaceBtwItems),
              Text(UTexts.verifyEmailTitle, style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: USizes.spaceBtwItems),
              Text('UnKnowPro@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: USizes.spaceBtwItems),
              Text(UTexts.verifyEmailSubTitle, style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center),
              SizedBox(height: USizes.spaceBtwSections),
              UElevatedButton(onPressed: () => Get.to(()=> SuccessScreen()), child: Text(UTexts.uContinue)),
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
