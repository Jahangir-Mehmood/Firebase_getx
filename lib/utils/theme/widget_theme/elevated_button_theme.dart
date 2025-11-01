import 'package:firebase_getx/utils/constants/imports.dart';

class UElevatedButtonTheme {
  UElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: uLight,
      backgroundColor: uPrimary,
      disabledForegroundColor: uDarkGrey,
      disabledBackgroundColor: uButtonDisabled,
      side: const BorderSide(color: uLight),
      padding: const EdgeInsets.symmetric(vertical: uButtonHeight),
      textStyle: const TextStyle(fontSize: 16, color: uTextWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(uButtonRadius)),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: uLight,
      backgroundColor: uPrimary,
      disabledForegroundColor: uDarkGrey,
      disabledBackgroundColor: uDarkerGrey,
      side: const BorderSide(color: uPrimary),
      padding: const EdgeInsets.symmetric(vertical: uButtonHeight),
      textStyle: const TextStyle(fontSize: 16, color: uTextWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(uButtonRadius)),
    ),
  );
}
