import 'package:firebase_getx/common/widgets/chips/choice_chip.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UProductAttributes extends StatelessWidget {
  const UProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        URoundedContainer(
          padding: EdgeInsets.all(uSm),
          backgroundColor: dark ? uDarkGrey : uGrey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  USectionHeading(title: 'Variation', showActionButton: false),
                  SizedBox(height: uSpaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          UProductTitleText(title: 'Price', smallSize: true),
                          Text(
                            '250',
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(height: uSpaceBtwItems),
                          UProductPriceText(price: '200'),
                        ],
                      ),
                      Row(
                        children: [
                          UProductTitleText(title: 'Stock', smallSize: true),
    
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              UProductTitleText(title: 'This is a product of iPhone 11 with 512 GB', smallSize: true, maxLines: 4),
            ],
          ),
        ),
        SizedBox(height: uSpaceBtwItems),
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: 'Colors', showActionButton: false),
            SizedBox(height: uSpaceBtwItems / 2),
            Wrap(
              spacing: uSm,
              children: [
                UChoiceChip(text: 'Red', selected: true, onSelected: (value) {}),
                UChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
                UChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: 'Colors', showActionButton: false),
            SizedBox(height: uSpaceBtwItems / 2),
            Wrap(
              spacing: uSm,
              children: [
                UChoiceChip(text: 'Small', selected: true, onSelected: (value) {}),
                UChoiceChip(text: 'Medium', selected: false, onSelected: (value) {}),
                UChoiceChip(text: 'Large', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
         
      ],
    );
  }
}
