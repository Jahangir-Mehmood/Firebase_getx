import 'package:firebase_getx/utils/constants/imports.dart';

class UPrivatePolicyCheckBox extends StatelessWidget {
  const UPrivatePolicyCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: (val) {}),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: [
              TextSpan(text: '${UTexts.iAgreeTo} '),
              TextSpan(
                text: UTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: dark ? uWhite : uPrimary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? uWhite : uPrimary,
                ),
              ),
              TextSpan(text: ' ${UTexts.and} '),
              TextSpan(
                text: '${UTexts.termsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: dark ? uWhite : uPrimary,
                  decoration: TextDecoration.underline,
                  decorationColor: uPrimary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
