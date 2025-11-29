import 'package:firebase_getx/common/widgets/layouts/grid_layout.dart';
import 'package:firebase_getx/navigation_menu.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        action: [
          UCircularIcon(icon: Iconsax.add, onPressed: () => NavigationController.instant.selectedIndex.value = 0),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(uDefaultSpace),
          child: UGridLayout(
            itemCount: 10,
            itemBuilder: (context, index) {
              return UProductCardVertical();
            },
          ),
        ),
      ),
    );
  }
}
