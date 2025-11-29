import 'package:firebase_getx/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: UAppBar(showBackArrow: true, title: Text('Sports', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              USectionHeading(title: 'Sports Shoes', onPress: () {}),
              SizedBox(height: uSpaceBtwItems / 2),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: uSpaceBtwItems / 2),
                  itemBuilder: (context, index) => UProductCardHorizontal(),
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
