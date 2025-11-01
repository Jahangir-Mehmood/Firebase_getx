import 'package:firebase_getx/utils/constants/imports.dart';


Color darkLightColor(
  BuildContext context, {
  Color? darkColor,
  Color? lightColor,
}) {
  final isDark = UHelperFunctions.isDarkMode(context);

  return isDark
      ? (darkColor ?? uDark)
      : (lightColor ?? uLight);
}