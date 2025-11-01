import 'package:firebase_getx/utils/constants/imports.dart';

class UTextFormFieldTheme {
  UTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: uDarkGrey,
    suffixIconColor: uDarkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: uFontSizeMd, color: uBlack),
    hintStyle: const TextStyle().copyWith(fontSize: uFontSizeSm, color: uBlack),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: uBlack.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(uInputFieldRadius),
      borderSide: const BorderSide(width: 1, color: uGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(uInputFieldRadius),
      borderSide: const BorderSide(width: 1, color: uGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(uInputFieldRadius),
      borderSide: const BorderSide(width: 1, color: uDark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(uInputFieldRadius),
      borderSide: const BorderSide(width: 1, color: uWarning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(uInputFieldRadius),
      borderSide: const BorderSide(width: 2, color: uWarning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: uDarkGrey,
    suffixIconColor: uDarkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: uFontSizeMd, color: uWhite),
    hintStyle: const TextStyle().copyWith(fontSize: uFontSizeSm, color: uWhite),
    floatingLabelStyle: const TextStyle().copyWith(color: uWhite.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(uInputFieldRadius),
      borderSide: const BorderSide(width: 1, color: uDarkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(uInputFieldRadius),
      borderSide: const BorderSide(width: 1, color: uDarkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(uInputFieldRadius),
      borderSide: const BorderSide(width: 1, color: uWhite),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(uInputFieldRadius),
      borderSide: const BorderSide(width: 1, color: uWarning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(uInputFieldRadius),
      borderSide: const BorderSide(width: 2, color: uWarning),
    ),
  );
}
