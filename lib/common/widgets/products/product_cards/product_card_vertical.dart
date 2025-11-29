import 'package:firebase_getx/features/shop/screens/product_detail/product_detail.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UProductCardVertical extends StatelessWidget {
  const UProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Get.to(()=> ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: UShadow.verticalProductShadow,
          borderRadius: BorderRadius.circular(uProductImageRadius),
          color: darkLightColor(context, darkColor: uDarkGrey, lightColor: uWhite),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            URoundedContainer(
              height: 180,
              padding: EdgeInsets.all(uSm),
              backgroundColor: darkLightColor(context),
              // backgroundColor: dark ? uDark : uLight,
              child: Stack(
                children: [
                  Center(child: URoundedImages(imageUrl: product15Image)),
                  // Image(image: AssetImage(product15Image)),
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
            SizedBox(height: uSpaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: uSm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UProductTitleText(title: 'Blue Bata Shoes', smallSize: true),
                  SizedBox(height: uSpaceBtwItems / 2),
                  UBrandTitleWithVerifyIcon(title: 'bata',),
                  // Spacer(),
                 
                ],
              ),
            ),
            Spacer(),
             Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$76',
                      style: Theme.of(context).textTheme.headlineMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
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
                ),
          ],
        ),
      ),
    );
  }
}






