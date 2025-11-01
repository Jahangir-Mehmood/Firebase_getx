import 'package:firebase_getx/utils/constants/imports.dart';

class OnBoardingPage extends StatelessWidget {
  final String animation;
  final String title;
  final String subTitle;

  /// Screen 1
  const OnBoardingPage.first({super.key})
    : animation = onboarding1Animation,
      title = UTexts.onBoardingTitle1,
      subTitle = UTexts.onBoardingSubTitle1;

  /// Screen 2
  const OnBoardingPage.second({super.key})
    : animation = onboarding2Animation,
      title = UTexts.onBoardingTitle2,
      subTitle = UTexts.onBoardingSubTitle2;

  /// Screen 3
  const OnBoardingPage.third({super.key})
    : animation = onboarding3Animation,
      title = UTexts.onBoardingTitle3,
      subTitle = UTexts.onBoardingSubTitle3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: UDeviceHelper.getAppBarHeight()),
      child: Column(
        children: [
          Lottie.asset(animation),
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          Text(subTitle, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
