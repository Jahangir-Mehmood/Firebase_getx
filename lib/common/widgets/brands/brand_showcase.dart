import 'package:firebase_getx/common/widgets/brands/brand_card.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UBrandShowcase extends StatelessWidget {
  const UBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return URoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(uSm),
      borderColor: uDarkGrey,
      margin: EdgeInsets.only(bottom: uSpaceBtwItems),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UBrandcard(showBorder: false),
          Row(children: 
             images.map((image) =>  buildBrandImage(dark , image)).toList()
          )
         
        ],
      ),
    );
  }

   Widget buildBrandImage(bool dark ,String image) {
    return Expanded(
      child: URoundedContainer(
            margin: EdgeInsets.only(right: uSm),
            padding: EdgeInsets.all(uMd),
            backgroundColor: dark ? uDarkGrey : uLight,
            child: Image(image: AssetImage(image)),
          ),
    );
  }
}
