import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_getx/features/shop/controllers/home/home_controller.dart';
import 'package:firebase_getx/features/shop/screens/home/widgets/banners_dot_navigation.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UPromoSlider extends StatelessWidget {
  const UPromoSlider({super.key, required this.banners});
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((banner) => URoundedImages(imageUrl: banner)).toList(),
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index, reason) => controller.onPageChange(index),
          ),
          carouselController: controller.carouselController,
        ),
        SizedBox(height: uSpaceBtwItems),
        BannerDotNavigation(),
      ],
    );
  }
}
