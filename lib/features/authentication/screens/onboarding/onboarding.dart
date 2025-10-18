import 'package:firebase_getx/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:firebase_getx/features/authentication/screens/onboarding/widgets/onboarding_indicater_button.dart';
import 'package:firebase_getx/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:firebase_getx/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:firebase_getx/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: UDeviceHelper.getAppBarHeight()),
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [OnBoardingPage.first(),OnBoardingPage.second(),OnBoardingPage.third()]),
            OnBoardingIndicaterButton(),
            OnBoardingNextButton(),
            OnBoardingSkipButton()
          ],
        ),
      ),
    );
  }
}
