import 'package:firebase_getx/utils/constants/imports.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true, title: Text('My Order', style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(padding: UPadding.screenPadding, child: UOrdetListItems()),
    );
  }
}

class UOrdetListItems extends StatelessWidget {
  const UOrdetListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: uSpaceBtwItems),
      itemCount: 10,
      itemBuilder: (context, index) => URoundedContainer(
        showBorder: true,

        backgroundColor: dark ? uDark : uLight,
        child: Column(
          children: [
            Row(
              children: [
                Icon(Iconsax.ship),
                SizedBox(height: uSpaceBtwItems / 2),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: uPrimary, fontWeightDelta: 1),
                      ),
                      Text('01 Jan 2025', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.arrow_right_34, size: uIconSm),
                ),
              ],
            ),
            SizedBox(height: uSpaceBtwItems),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Iconsax.tag),
                      SizedBox(height: uSpaceBtwItems / 2),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium!),
                            Text('[#5657]', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Icon(Iconsax.calendar),
                      SizedBox(height: uSpaceBtwItems / 2),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium!),
                            Text('6 Jan 2025', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
