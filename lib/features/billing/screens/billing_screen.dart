import 'package:firebase_getx/features/billing/screens/views/shop_name_view.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class BillingScreen extends StatelessWidget {
  const BillingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UPrimaryHeaderContainer(
            height: uStorePrimaryHeaderHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [Icon(Icons.shop_2_outlined, color: uWhite)]),
                // UHomeAppBar(),
                SizedBox(height: uSpaceBtwSections),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              padding: EdgeInsets.all(8),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(() {
                      ShopNameView();

                    });
                  },
                  child: Card(
                    // margin: EdgeInsets.all(8),
                    color: uWhite,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.shopping_cart_outlined, size: 30),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '009876 - Taha Nimco & Bakers',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.labelLarge,
                                    ),
                                    Text(
                                      'North Karachi',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.labelMedium,
                                    ),
                                  ],
                                ),
                              ),
                              Icon(Icons.star_outline_sharp),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
