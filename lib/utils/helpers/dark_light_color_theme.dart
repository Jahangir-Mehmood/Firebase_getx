import 'package:firebase_getx/utils/constants/imports.dart';

Color darkLightColor(
  BuildContext context, {
  Color? darkColor,
  Color? lightColor,
}) {
  final isDark = UHelperFunctions.isDarkMode(context);

  // agar user ne custom colors diye hain to unhe use karega
  // warna default uDark / uLight use karega
  return isDark
      ? (darkColor ?? uDark)
      : (lightColor ?? uLight);
}

