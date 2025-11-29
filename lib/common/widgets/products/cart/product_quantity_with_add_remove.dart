import 'package:firebase_getx/utils/constants/imports.dart';

class UProductQuantityWithAddRemove extends StatelessWidget {
  const UProductQuantityWithAddRemove({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        UCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: uIconSm,
          color: dark ? uWhite : uBlack,
          backgroundColor: dark ? uDarkerGrey : uLight,
        ),
        SizedBox(width: uSpaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(width: uSpaceBtwItems),
        UCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: uIconSm,
          color: uWhite,
          backgroundColor: uPrimary,
        ),
      ],
    );
  }
}