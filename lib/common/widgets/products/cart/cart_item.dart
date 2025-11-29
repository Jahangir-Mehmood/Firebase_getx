import 'package:firebase_getx/utils/constants/imports.dart';

class UCartItem extends StatelessWidget {
  const UCartItem({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [URoundedImages(imageUrl: productImage4a, height: 60, width: 60, padding: EdgeInsets.all(uSm),backgroundcolor: dark ? uDarkerGrey : uLight),
      SizedBox(width: uSpaceBtwItems),
      Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UBrandTitleWithVerifyIcon(title: 'iPhine'),
          UProductTitleText(title: 'Color Green Size 32',maxLines: 1),
            
        RichText(text: TextSpan(
          children: [TextSpan(text: 'Color ',style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: 'Green ',style: Theme.of(context).textTheme.bodyLarge),
          TextSpan(text: 'Strage ',style: Theme.of(context).textTheme.bodyLarge),
          TextSpan(text: '512GB ',style: Theme.of(context).textTheme.bodyLarge),
          ],
        ))
        ],
      ))
      ],
    );
  }
}
