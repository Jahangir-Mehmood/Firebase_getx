part of '../onboarding.dart';

class _OnBoardingIndicaterButton extends StatelessWidget {
  const _OnBoardingIndicaterButton();

  @override
  Widget build(BuildContext context) {
final controller = OnboardingController.inctance;

    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight() * 4,
      right: UDeviceHelper.getScreenWidth(context) / 3,
      left: UDeviceHelper.getScreenWidth(context) / 3,
      child: SmoothPageIndicator(
        onDotClicked: controller.dotNavigationClick,
        controller: controller.pageController, count: 3,effect: ExpandingDotsEffect(dotHeight: 8)));
  }
}