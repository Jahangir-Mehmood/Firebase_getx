import 'package:firebase_getx/utils/constants/imports.dart';
import 'package:flutter/cupertino.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

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
              Image.asset(UImages.accountCreatedImage, height: UDeviceHelper.getScreenWidth(context) * 0.6),
              SizedBox(height: uSpaceBtwItems),
              Text(
                UTexts.accountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: uSpaceBtwItems),
              // Text('UnKnowPro@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: uSpaceBtwItems),
              Text(
                UTexts.accountCreatedSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: uSpaceBtwSections),
              UElevatedButton(onPressed: () => Get.to(() => SuccessScreen()), child: Text(UTexts.uContinue)),
            ],
          ),
        ),
      ),
    );
  }
}
