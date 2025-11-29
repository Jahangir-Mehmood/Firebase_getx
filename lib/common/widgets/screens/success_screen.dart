import 'package:firebase_getx/utils/constants/imports.dart';

// class SuccessScreen extends StatelessWidget {
//   const SuccessScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         actions: [IconButton(onPressed: () => Get.offAll(() => ()), icon: Icon(CupertinoIcons.clear))],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: UPadding.screenPadding,
//           child: Column(
//             children: [
//               Image.asset(accountCreatedImage, height: UDeviceHelper.getScreenWidth(context) * 0.6),
//               SizedBox(height: uSpaceBtwItems),
//               Text(
//                 UTexts.accountCreatedTitle,
//                 style: Theme.of(context).textTheme.headlineMedium,
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: uSpaceBtwItems),
//               // Text('UnKnowPro@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
//               SizedBox(height: uSpaceBtwItems),
//               Text(
//                 UTexts.accountCreatedSubTitle,
//                 style: Theme.of(context).textTheme.bodyMedium,
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: uSpaceBtwSections),
//               UElevatedButton(onPressed: () => Get.to(() => SuccessScreen()), child: Text(UTexts.uContinue)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.title, required this.subTitle, required this.image, required this.onTap});

  final String title, subTitle, image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [

              /// Image
              Image.asset(image, height: UDeviceHelper.getScreenWidth(context) * 0.6),
              SizedBox(height: uSpaceBtwItems),

              /// Title
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              SizedBox(height: uSpaceBtwItems),

              /// Subtitle
              Text(subTitle, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center),
              SizedBox(height: uSpaceBtwSections),

              /// Continue
              UElevatedButton(onPressed: onTap, child: Text(UTexts.uContinue))
            ],
          ),
        ),
      ),
    );
  }
}
