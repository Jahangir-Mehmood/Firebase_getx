import 'package:firebase_getx/utils/constants/imports.dart';

class UCirculeContainer extends StatelessWidget {
  const UCirculeContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.radius = 400,
    this.backGroundColor = uWhite,
    this.padding,
    this.margin,
  });

  final double height, width, radius;
  final Color backGroundColor;
  final EdgeInsetsGeometry? padding, margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height,
      height: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(color: backGroundColor, borderRadius: BorderRadius.circular(radius)),
    );
  }
}
