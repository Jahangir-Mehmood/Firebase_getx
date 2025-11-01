import 'package:firebase_getx/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.inctance;

    return Positioned(
      left: 0,
      right: 0,
      bottom: uSpaceBtwItems,
      child: UElevatedButton(
        child: Obx(() {
          return Text(controller.currentIndex.value == 2 ? 'Start' : 'Next');
        }),
        onPressed: () {
          controller.nextPage();
        },
      ),
    );
  }
}
