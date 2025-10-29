import 'package:firebase_getx/utils/constants/imports.dart';

class UChipTheme {
  // private constructor
  UChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: uGrey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: uBlack),
    selectedColor: uPrimary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: uWhite,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: uDarkerGrey,
    labelStyle: TextStyle(color: uWhite),
    selectedColor: uPrimary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: uWhite,
  );
}
