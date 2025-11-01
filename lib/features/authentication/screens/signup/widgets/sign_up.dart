import 'package:firebase_getx/features/authentication/screens/signup/verify_email.dart';
import 'package:firebase_getx/features/authentication/screens/signup/widgets/privacy_policy_check_box.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class USignUp extends StatelessWidget {
  const USignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), label: Text(UTexts.firstName)),
              ),
            ),
            SizedBox(width: uSpaceBtwInputFields),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), label: Text(UTexts.lastName)),
              ),
            ),
          ],
        ),
        TextFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right), label: Text(UTexts.email)),
        ),
        SizedBox(height: uSpaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right), label: Text(UTexts.phoneNumber)),
        ),
        SizedBox(height: uSpaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye),
            labelText: UTexts.password,
          ),
        ),
        SizedBox(height: uSpaceBtwInputFields / 2),
        UPrivatePolicyCheckBox(),
        SizedBox(height: uSpaceBtwItems),
        UElevatedButton(onPressed: () => Get.to(() => VerifyEmailScreen()), child: Text(UTexts.createAccount)),
      ],
    );
  }
}
