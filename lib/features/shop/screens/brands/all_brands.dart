import 'package:firebase_getx/common/widgets/brands/brand_card.dart';
import 'package:firebase_getx/common/widgets/layouts/grid_layout.dart';
import 'package:firebase_getx/features/shop/screens/brands/brand_products.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true, title: Text('Brand', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,child: Column(
          children: [
            USectionHeading(title: 'Brands',showActionButton: false),
            SizedBox(height: uSpaceBtwItems),
            UGridLayout(
              mainAxisExtent: 80,
              itemCount: 10, itemBuilder: (context, index) => UBrandcard(onTab: ()=> Get.to(()=> BrandProductsScreen()),),)
          ],
        ),),
      ),
    );
  }
}
