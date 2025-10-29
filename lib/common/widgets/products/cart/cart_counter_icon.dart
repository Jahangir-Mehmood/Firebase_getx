import 'package:firebase_getx/utils/constants/imports.dart';

class UCardCounterIcon extends StatelessWidget {
  const UCardCounterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        Positioned(
          right: 5,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(color: uBlack, shape: BoxShape.circle),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(fontSizeFactor: 0.8, color: dark ? uDark : uLight),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.shopping_bag, color: dark ? uDark : uWhite),
        ),
      ],
    );
  }
}
