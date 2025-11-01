import 'package:firebase_getx/features/shop/controllers/home/home_controller.dart';
import 'package:firebase_getx/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:firebase_getx/features/shop/screens/home/widgets/home_categories.dart';
import 'package:firebase_getx/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:firebase_getx/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(height: uHomePrimaryHeaderHeight + 20),
              UPrimaryHeaderContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UHomeAppBar(),
                    SizedBox(height: uSpaceBtwSections),
                    UHomeCategories(),
                  ],
                ),
              ),
              Container(
                height: 60,
                // decoration: BoxDecoration(
                //   borderRadius:

                // )
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(uDefaultSpace),
            child: UPromoSlider(
              banners: [
                UImages.homeBanner1,
                UImages.homeBanner2,
                UImages.homeBanner3,
                UImages.homeBanner4,
                UImages.homeBanner5,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
