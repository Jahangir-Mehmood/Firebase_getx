import 'package:firebase_getx/utils/constants/imports.dart';

class UOutlinedButtonTheme {
  UOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: uDark,
      side: const BorderSide(color: uBorderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: uBlack, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: USizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(USizes.buttonRadius)),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: uLight,
      side: const BorderSide(color: uBorderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: uTextWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: USizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(USizes.buttonRadius)),
    ),
  );
}
