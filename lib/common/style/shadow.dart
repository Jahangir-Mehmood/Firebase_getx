import 'package:firebase_getx/utils/constants/imports.dart';

class UShadow{
  UShadow._();

  static List<BoxShadow> searchBarShadow = [
    BoxShadow(
        color: uBlack.withValues(alpha: 0.1),
        spreadRadius: 2.0,
        blurRadius: 4.0
    )
  ];

  static List<BoxShadow> verticalProductShadow = [BoxShadow(
      color: uDarkGrey.withValues(alpha: 0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  )];
}