import 'package:firebase_getx/features/shop/controllers/home/home_controller.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
              child: Column(
                children: [
                  UPromoSlider(banners: [homeBanner1, homeBanner2, homeBanner3, homeBanner4, homeBanner5]),
                  SizedBox(height: uSpaceBtwSections),
                  USectionHeading(title: UTexts.popularCategories, onPress: () {}),
                  SizedBox(height: uSpaceBtwSections),
        
                  const UProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
