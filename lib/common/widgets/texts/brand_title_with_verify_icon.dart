import 'package:firebase_getx/common/widgets/texts/brand_title_text.dart';
import 'package:firebase_getx/utils/constants/enums.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UBrandTitleWithVerifyIcon extends StatelessWidget {
  const UBrandTitleWithVerifyIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = uPrimary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [

        /// Brand Title
        Flexible(
          child: UBrandTitleText(
            title: title,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
            color: textColor,
          ),
        ),
        SizedBox(width: uXs),

        /// Verify Icon
        Icon(Iconsax.verify5, color: uPrimary, size: uIconXs)
      ],
    );
  }
}