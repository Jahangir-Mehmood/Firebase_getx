import 'package:firebase_getx/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.inctance;
    return Obx(
      () => controller.currentIndex.value == 2 ? SizedBox() : Positioned(
        top: UDeviceHelper.getAppBarHeight(),
        right: 0,
        child: TextButton(onPressed: () {}, child: Text('Skip')),
      ),
    );
  }
}
