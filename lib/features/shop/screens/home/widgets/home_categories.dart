import 'package:firebase_getx/common/widgets/image_text/vertical_image_text.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UHomeCategories extends StatelessWidget {
  const UHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: uSpaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(UTexts.popularCategories, style: Theme.of(context).textTheme.headlineSmall!.apply(color: uWhite)),
          SizedBox(height: uSpaceBtwItems),
          SizedBox(
            height: 80,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: uSpaceBtwItems),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return UVerticalImageText(title: 'Style Sports', image: sportsIcon, textColor: uWhite);
              },
            ),
          ),
        ],
      ),
    );
  }
}
