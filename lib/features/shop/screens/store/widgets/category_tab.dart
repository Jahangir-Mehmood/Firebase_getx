import 'package:firebase_getx/common/widgets/brands/brand_showcase.dart';
import 'package:firebase_getx/common/widgets/layouts/grid_layout.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UCategoryTab extends StatelessWidget {
  const UCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
     shrinkWrap: true,
      children: [
       Padding(
       padding: const EdgeInsets.symmetric(horizontal:  uDefaultSpace),
       child: Column(
         children: [
           UBrandShowcase(images: [productImage47,productImage43,productImage7],),
           UBrandShowcase(images: [productImage47,productImage43,productImage7],),
           SizedBox(height: uSpaceBtwItems),
           USectionHeading(title: 'You might like',onPress: (){}),
           UGridLayout(itemCount: 4, itemBuilder: (context , index) {return UProductCardVertical();} ),
           SizedBox(height: uSpaceBtwItems)
         ],
       ),
     ),
      ],
    );
  }
}