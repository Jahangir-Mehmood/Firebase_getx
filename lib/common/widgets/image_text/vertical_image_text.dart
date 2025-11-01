import 'package:firebase_getx/common/widgets/circuler_shapes/circular_container.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UVerticalImageText extends StatelessWidget {
  const UVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    required this.textColor,
    this.backgroundColor,
    this.onTap,
  });

  final String title, image;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UCirculeContainer(
            height: 56,
            width: 56,
            backGroundColor: backgroundColor ?? uWhite,
            padding: EdgeInsets.all(uSm),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          SizedBox(height: uSpaceBtwItems / 2),
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}