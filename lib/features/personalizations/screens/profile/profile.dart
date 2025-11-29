import 'package:firebase_getx/features/personalizations/screens/address/address.dart';
import 'package:firebase_getx/features/personalizations/screens/profile/widgets/setting_menu_tile.dart';
import 'package:firebase_getx/features/personalizations/screens/profile/widgets/profile_primary_header.dart';
import 'package:firebase_getx/features/personalizations/screens/profile/widgets/uer_profile_tile.dart';
import 'package:firebase_getx/features/shop/screens/order/order.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UProfilePrimaryHeader(),
            SizedBox(height: uSpaceBtwItems),
            Padding(
              padding: const EdgeInsets.all(uDefaultSpace),
              child: Column(
                children: [
                  UserProfileTile(),
                  USectionHeading(showActionButton: false, title: 'Account Setting'),
                  SettingMenuTile(
                    title: 'My Addresses',
                    subTitle: 'Add, remove products and move to checkout',
                    icon: Iconsax.safe_home,
                    onTap: ()=> Get.to(()=> AddressScreen())
                  ),
                  SettingMenuTile(
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    icon: Iconsax.shopping_cart,
                    onTap: (){}
                  ),
                  SettingMenuTile(
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    icon: Iconsax.bag_tick,
                    onTap: ()=> Get.to(OrderScreen())
                  ),
                  SizedBox(height: uSpaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {}, child: Text('Log Out')),
                  ),
                  SizedBox(height: uSpaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
