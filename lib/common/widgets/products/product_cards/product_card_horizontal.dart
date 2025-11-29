import 'package:firebase_getx/utils/constants/imports.dart';

class UProductCardHorizontal extends StatelessWidget {
  const UProductCardHorizontal({
    super.key
  });


  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Container(
      width: 318,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(uProductImageRadius),
        color: dark ? uDarkerGrey : uWhite,
      ),
      child: Row(
        children: [
      URoundedContainer(
        height: 120,
      padding: EdgeInsets.all(uSm),
      backgroundColor: dark ? uDark : uLight,
      child: Stack(
        children: [
          SizedBox(width: 120,height: 120,child: URoundedImages(imageUrl: productImage15)),
           Positioned(
          top: 1,
          child: URoundedContainer(
            radius: uSm,
            backgroundColor: uYellow.withValues(alpha: 0.8),
            padding: EdgeInsets.symmetric(horizontal: uSm, vertical: uXs),
            child: UProductPriceText(price: '65',),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: UCircularIcon(icon: Iconsax.heart, color: Colors.red),
        ),
        ],
      ),
      ),
      SizedBox(
        width: 170,
        height: 100,
        child: Padding(
                  padding: const EdgeInsets.only(left: uSm,top: uSm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UProductTitleText(title: 'Blue Bata Shoes',smallSize: true),
                          SizedBox(height: uSpaceBtwItems / 2),
                          UBrandTitleWithVerifyIcon(title: 'Bata')
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: UProductPriceText(price: '65')),
                          Container(
                        width: uIconLg * 1.2,
                        height: uIconLg * 1.2,
                        decoration: BoxDecoration(
                          color: uPrimary,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(uCardRadiusMd),
                            bottomRight: Radius.circular(uProductImageRadius),
                          ),
                        ),
                        child: Icon(Iconsax.add, color: uWhite),
                      ),
                        ],
                      )
                    ],
                  ),
                ),
      )
    ],),
    );
  }
}
