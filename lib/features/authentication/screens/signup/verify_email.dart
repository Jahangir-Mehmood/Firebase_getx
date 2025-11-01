import 'package:firebase_getx/common/widgets/screens/success_screen.dart';
import 'package:firebase_getx/utils/constants/imports.dart';
import 'package:flutter/cupertino.dart';

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
              Image.asset(mailSentImage, height: UDeviceHelper.getScreenWidth(context) * 0.6),
              SizedBox(height: uSpaceBtwItems),
              Text(UTexts.verifyEmailTitle, style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: uSpaceBtwItems),
              Text('UnKnowPro@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: uSpaceBtwItems),
              Text(
                UTexts.verifyEmailSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: uSpaceBtwSections),
              UElevatedButton(onPressed: () => Get.to(() => SuccessScreen()), child: Text(UTexts.uContinue)),
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
