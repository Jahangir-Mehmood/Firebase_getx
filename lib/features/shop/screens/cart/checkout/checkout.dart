import 'package:firebase_getx/common/text_feilds/promo_code.dart';
import 'package:firebase_getx/common/widgets/screens/success_screen.dart';
import 'package:firebase_getx/features/shop/screens/cart/cart.dart';
import 'package:firebase_getx/navigation_menu.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              UCartItems(showAddRemoveButton: false),
              SizedBox(height: uSpaceBtwSections),
              UPromoCodeField(),
              SizedBox(height: uSpaceBtwSections),
              URoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(uMd),
                backgroundColor: Colors.transparent,
                child: Column(children: [UBillingAmountSection()]),
              ),
              SizedBox(height: uSpaceBtwItems),
              UBillingAmountSection(),
              SizedBox(height: uSpaceBtwItems),
              UBillingAddressSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(uDefaultSpace),
        child: UElevatedButton(onPressed: ()=> Get.to(()=> SuccessScreen(title: 'Payment Success', subTitle: 'Yout item will be shipped soon!', image: successfulPaymentIcon, onTap: () => Get.offAll(()=> NavigationMenu()),)), child: Text('Caeckout \$7654')),
      ),
    );
  }
}

class UBillingAmountSection extends StatelessWidget {
  const UBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SubTotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$343', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: uSpaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$10', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: uSpaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$10', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: uSpaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$10', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}

class UBillingPaymenySection extends StatelessWidget {
  const UBillingPaymenySection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        USectionHeading(title: 'Patment methord', buttonTitle: 'Change', onPress: () {}),
        SizedBox(height: uSpaceBtwItems / 2),
        Row(
          children: [
            URoundedContainer(
              width: 60,
              height: 15,
              backgroundColor: dark ? uLight : uWhite,
              padding: EdgeInsets.all(uSm),
              child: Image(image: AssetImage(masterCard), fit: BoxFit.contain),
            ),
            SizedBox(height: uSpaceBtwItems / 2),
            Text('Google Pay', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}

class UBillingAddressSection extends StatelessWidget {
  const UBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        USectionHeading(title: 'Billing Address', buttonTitle: 'Change', onPress: () {}),
        Text('Unknor Pro', style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: uSpaceBtwItems / 2),
        Row(
          children: [
            Icon(Icons.phone,size: uIconSm,color: uDarkGrey),
            SizedBox(height: uSpaceBtwItems),
            Text('+92 4343454678'),
          ],
        ),
        SizedBox(height: uSpaceBtwItems / 2),
        Row(
          children: [
            Icon(Icons.location_history,size: uIconSm,color: uDarkGrey),
            SizedBox(height: uSpaceBtwItems),
            Expanded(child: Text('House No.295, Hyderabad, Sindh, Pakistan',softWrap: true)),
          ],
        )
      ],
    );
  }
}
