import 'package:firebase_getx/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:firebase_getx/utils/constants/imports.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingIndicaterButton extends StatelessWidget {
  const OnBoardingIndicaterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
final controller = OnboardingController.inctance;

    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight() * 4,
      right: UDeviceHelper.getScreenWidth(context) / 3,
      left: UDeviceHelper.getScreenWidth(context) / 3,
      child: SmoothPageIndicator(
        onDotClicked: controller.dotNavigationClick,
        controller: controller.pageController, count: 3,effect: ExpandingDotsEffect(dotHeight: 6),));
  }
}