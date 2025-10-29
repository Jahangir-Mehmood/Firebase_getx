import 'package:firebase_getx/features/shop/screens/home/home.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(() {
        return NavigationBar(
          elevation: 0,
          backgroundColor: dark ? uDark : uLight,
          indicatorColor: dark ? uLight.withValues(alpha: 0.1) : uBlack.withValues(alpha: 0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: controller.onChange,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        );
      }),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = RxInt(0);

  onChange(value) {
    selectedIndex.value = value;
  }

  List<Widget> screens = [
    HomeScreen(),
    Container(color: Colors.orange),
    Container(color: Colors.pink),
    Container(color: Colors.amber),
  ];
}
