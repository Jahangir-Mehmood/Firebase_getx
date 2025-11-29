import 'package:firebase_getx/common/widgets/brands/brand_card.dart';
import 'package:firebase_getx/common/widgets/products/sortable_products.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true, title: Text('Bata', style: Theme.of(context).textTheme.headlineSmall)),
       body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,child: Column(
          children: [
           UBrandcard(),
           SizedBox(height: uSpaceBtwSections),
           UsortableProducts(),
          ],
        ),),
      ),
    );
  }
}