import 'package:firebase_getx/utils/constants/enums.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

// class UBrandCard extends StatelessWidget {
//   const UBrandCard({
//     super.key,
//     this.showBorder = true,
//     this.onTap,
//     // required this.brand
//   });

//   final bool showBorder;
//   final VoidCallback? onTap;

//   // final BrandModel brand;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: URoundedContainer(
//         height: uBrandCardHeight,
//         showBorder: showBorder,
//         padding: EdgeInsets.all(uSm),
//         backgroundColor: Colors.transparent,
//         child: Row(
//           children: [
//             /// Brand Image
//             Flexible(child: URoundedImage(
//                 // imageUrl: brand.image,
//               isNetworkImage: true,
//               backgroundColor: Colors.transparent,
//             )),
//             SizedBox(width: uSpaceBtwItems / 2),

//             /// Right Portion
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   /// Brand Name & verify Icon
//                   UBrandTitleWithVerifyIcon(title: brand.name, brandTextSize: TextSizes.large),

//                   /// Text
//                   Text('${brand.productsCount} products',
//                       style: Theme.of(context).textTheme.labelMedium, overflow: TextOverflow.ellipsis)
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class UBrandcard extends StatelessWidget {
  const UBrandcard({
    super.key, this.showBorder = true, this.onTab,
  });
final bool showBorder;
final VoidCallback? onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTab,
      child: URoundedContainer(
        height: uBrandCardHeight,
        showBorder: showBorder,
        padding: EdgeInsets.all(uSm),
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(child: URoundedImages(imageUrl: bataLogo)),
            SizedBox(width: uSpaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UBrandTitleWithVerifyIcon(title: 'Bata',brandTextSize: TextSizes.large),
                  Text('172 products',style: Theme.of(context).textTheme.labelMedium,overflow: TextOverflow.ellipsis)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}