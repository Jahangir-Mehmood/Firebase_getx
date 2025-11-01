import 'package:firebase_getx/features/shop/controllers/home/home_controller.dart';
import 'package:firebase_getx/utils/constants/imports.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerDotNavigation extends StatelessWidget {
  const BannerDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;

    return Obx(
      () => SmoothPageIndicator(
        count: 5,
        effect: ExpandingDotsEffect(dotHeight: 6),
        controller: PageController(initialPage: controller.currentIndex.value),
      ),
    );
  }
}
