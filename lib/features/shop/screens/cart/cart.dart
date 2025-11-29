import 'package:firebase_getx/common/widgets/products/cart/cart_item.dart';
import 'package:firebase_getx/common/widgets/products/cart/product_quantity_with_add_remove.dart';
import 'package:firebase_getx/features/shop/screens/cart/checkout/checkout.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium)),
      body: Padding(padding: UPadding.screenPadding, child: UCartItems()),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(uDefaultSpace),
        child: UElevatedButton(onPressed: ()=> Get.to(()=> CheckoutScreen()), child: Text('Caeckout \$7654')),
      ),
    );
  }
}

class UCartItems extends StatelessWidget {
  const UCartItems({super.key, this.showAddRemoveButton = true});
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => SizedBox(height: uSpaceBtwSections),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          children: [
            UCartItem(),
            if(showAddRemoveButton) ...[
            SizedBox(height: uSpaceBtwItems),
            Row(
              children: [
                SizedBox(width: 70),
                UProductQuantityWithAddRemove(),
                Spacer(),
                UProductPriceText(price: '323'),
              ],
            ),]
          ],
        );
      },
    );
  }
}
