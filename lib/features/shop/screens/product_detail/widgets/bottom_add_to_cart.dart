import 'package:firebase_getx/common/widgets/icons/circular_icon.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: uDefaultSpace,vertical: uDefaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? uDarkGrey : uLight ,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(uCardRadiusLg),topRight: Radius.circular(uCardRadiusLg)),
      ),
      child: Row(
        children: [
          UCircularIcon(icon: Iconsax.minus,backgroundColor: uDarkGrey,width: 40,height: 40,color: uWhite),
          SizedBox(width: uSpaceBtwItems),
          Text('2',style: Theme.of(context).textTheme.titleSmall),
          SizedBox(width: uSpaceBtwItems),
          UCircularIcon(icon: Iconsax.add,backgroundColor: uBlack,width: 40,height: 40,color: uWhite),
          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(padding: EdgeInsets.all(uMd),backgroundColor: uBlack,side: BorderSide(color: uBlack)), child: Row(
            children: [
               Icon(Iconsax.shopping_bag),
              //  SizedBox(width: ,)
              Text('Add to Cart'),
            ],
          ))
        ],
      ),
    );
  }
}