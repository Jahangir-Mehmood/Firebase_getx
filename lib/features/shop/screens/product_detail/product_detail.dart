import 'package:firebase_getx/common/widgets/appbar/appbar.dart';
import 'package:firebase_getx/common/widgets/custom_shapes/rounded_container.dart';
import 'package:firebase_getx/common/widgets/icons/circular_icon.dart';
import 'package:firebase_getx/common/widgets/images/circular_image.dart';
import 'package:firebase_getx/common/widgets/images/rounded_images.dart';
import 'package:firebase_getx/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:firebase_getx/common/widgets/texts/product_price_text.dart';
import 'package:firebase_getx/common/widgets/texts/product_title_text.dart';
import 'package:firebase_getx/features/shop/screens/product_detail/widgets/bottom_add_to_cart.dart';
import 'package:firebase_getx/features/shop/screens/product_detail/widgets/product_attributes.dart';
import 'package:firebase_getx/utils/constants/imports.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UProductThumbnailAndSlider(dark: dark),
            Padding(
              padding: UPadding.screenPadding,
              child: Column(
                children: [
                  UProductMetaData(),
              UProductAttributes(),
              SizedBox(height: uSpaceBtwItems),
              UElevatedButton(onPressed: () {}, child: Text('Checkout')),
              SizedBox(height: uSpaceBtwItems),
              USectionHeading(title: 'Description', showActionButton: false),
              SizedBox(height: uSpaceBtwItems),
              ReadMoreText(
                'This is a product of iPhone 11 with 512 GB' * 10,
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: ' Show more',
                trimExpandedText: ' Less',
                moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
              ),
              SizedBox(height: uSpaceBtwItems),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAddToCart(),
    );
  }
}

class UProductMetaData extends StatelessWidget {
  const UProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            URoundedContainer(
              radius: uSm,
              backgroundColor: uYellow.withValues(alpha: 0.8),
              padding: EdgeInsets.symmetric(horizontal: uSm, vertical: uXs),
              child: Text('20%', style: Theme.of(context).textTheme.labelLarge!.apply(color: uBlack)),
            ),
            SizedBox(width: uSpaceBtwItems),
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
            ),
            SizedBox(width: uSpaceBtwItems),
            UProductPriceText(price: '150', isLarge: true),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          ],
        ),
        SizedBox(width: uSpaceBtwItems / 1.5),
        UProductTitleText(title: 'Apple iphone 11'),
        SizedBox(width: uSpaceBtwItems / 1.5),
    
        Row(
          children: [
            UProductTitleText(title: 'Status'),
            SizedBox(width: uSpaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        SizedBox(width: uSpaceBtwItems / 1.5),
        Row(
          children: [
            UCircularImage(padding: 0, image: appleLogo, width: 32, height: 32),
            SizedBox(width: uSpaceBtwItems),
            UBrandTitleWithVerifyIcon(title: 'Apple'),
          ],
        ),
      ],
    );
  }
}

class UProductThumbnailAndSlider extends StatelessWidget {
  const UProductThumbnailAndSlider({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dark ? uDarkGrey : uLight,
      child: Stack(
        children: [
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(uProductImageRadius * 2),
              child: Center(child: Image(image: AssetImage(productImage4a))),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 30,
            left: uDefaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: uSpaceBtwItems),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => URoundedImages(
                  width: 80,
                  border: Border.all(color: uPrimary),
                  backgroundcolor: dark ? uDark : uWhite,
                  padding: EdgeInsets.all(uSm),
                  imageUrl: productImage2,
                ),
              ),
            ),
          ),
          UAppBar(
            showBackArrow: true,
            action: [UCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
          ),
        ],
      ),
    );
  }
}
