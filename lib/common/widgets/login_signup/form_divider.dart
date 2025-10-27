import 'package:firebase_getx/utils/constants/imports.dart';
import 'package:firebase_getx/utils/helpers/helper_functions.dart';

class UFormDivider extends StatelessWidget {
  const UFormDivider({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Expanded(
          child: Divider(endIndent: 5, indent: 60, thickness: 0.5, color: dark ? UColors.darkGrey : UColors.grey),
        ),
        Text(title, style: Theme.of(context).textTheme.labelMedium),
        Expanded(
          child: Divider(endIndent: 60, indent: 5, thickness: 0.5, color: dark ? UColors.darkGrey : UColors.grey),
        ),
      ],
    );
  }
}
