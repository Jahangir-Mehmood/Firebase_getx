// import 'package:flutter/material.dart';

// enum UiFontWeight { light, normal, semiBold, bold }

// class UiText extends StatelessWidget {
//   final String text;
//   final double size;
//   final UiFontWeight weight;
//   final Color? color;
//   final bool underline;
//   final int? lines;
//   final TextAlign? align;

//   const UiText._internal(
//     this.text, {
//     required this.size,
//     required this.weight,
//     this.color,
//     this.underline = false,
//     this.lines,
//     this.align,
//     super.key,
//   });

//   // ---------------------- NORMAL ----------------------
//   factory UiText.n8(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 8, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n9(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 9, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n10(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 10, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n11(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 11, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n12(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 12, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n13(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 13, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n14(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 14, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n15(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 15, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n16(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 16, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n17(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 17, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n18(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 18, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n19(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 19, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n20(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 20, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n21(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 21, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n22(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 22, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n23(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 23, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n24(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 24, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n25(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 25, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n26(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 26, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n27(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 27, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n28(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 28, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n29(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 29, weight: UiFontWeight.normal, color: color, align: align);
//   factory UiText.n30(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 30, weight: UiFontWeight.normal, color: color, align: align);

//   // ---------------------- SEMIBOLD ----------------------
//   factory UiText.s8(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 8, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s9(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 9, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s10(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 10, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s11(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 11, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s12(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 12, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s13(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 13, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s14(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 14, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s15(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 15, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s16(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 16, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s17(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 17, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s18(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 18, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s19(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 19, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s20(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 20, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s21(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 21, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s22(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 22, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s23(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 23, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s24(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 24, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s25(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 25, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s26(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 26, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s27(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 27, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s28(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 28, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s29(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 29, weight: UiFontWeight.semiBold, color: color, align: align);
//   factory UiText.s30(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 30, weight: UiFontWeight.semiBold, color: color, align: align);

//   // ---------------------- BOLD ----------------------
//   factory UiText.b8(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 8, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b9(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 9, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b10(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 10, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b11(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 11, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b12(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 12, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b13(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 13, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b14(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 14, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b15(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 15, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b16(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 16, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b17(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 17, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b18(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 18, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b19(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 19, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b20(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 20, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b21(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 21, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b22(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 22, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b23(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 23, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b24(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 24, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b25(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 25, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b26(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 26, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b27(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 27, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b28(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 28, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b29(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 29, weight: UiFontWeight.bold, color: color, align: align);
//   factory UiText.b30(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 30, weight: UiFontWeight.bold, color: color, align: align);

//   // ---------------------- LIGHT ----------------------
//   factory UiText.l8(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 8, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l9(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 9, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l10(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 10, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l11(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 11, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l12(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 12, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l13(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 13, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l14(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 14, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l15(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 15, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l16(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 16, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l17(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 17, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l18(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 18, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l19(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 19, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l20(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 20, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l21(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 21, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l22(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 22, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l23(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 23, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l24(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 24, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l25(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 25, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l26(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 26, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l27(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 27, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l28(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 28, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l29(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 29, weight: UiFontWeight.light, color: color, align: align);
//   factory UiText.l30(String t, {Color? color, TextAlign? align}) => UiText._internal(t, size: 30, weight: UiFontWeight.light, color: color, align: align);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       maxLines: lines,
//       textAlign: align,
//       overflow: TextOverflow.ellipsis,
//       style: TextStyle(
//         fontSize: size,
//         fontWeight: _resolveFontWeight(),
//         color: color ?? Colors.black,
//         decoration: underline ? TextDecoration.underline : TextDecoration.none,
//         fontFamily: 'TabacSans',
//       ),
//     );
//   }

//   FontWeight _resolveFontWeight() {
//     switch (weight) {
//       case UiFontWeight.light:
//         return FontWeight.w300;
//       case UiFontWeight.normal:
//         return FontWeight.w400;
//       case UiFontWeight.semiBold:
//         return FontWeight.w500;
//       case UiFontWeight.bold:
//         return FontWeight.w600;
//     }
//   }
// }
