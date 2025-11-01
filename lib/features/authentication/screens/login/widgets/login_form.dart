part of '../login.dart';

class _ULoginForm extends StatelessWidget {
  const _ULoginForm();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: UTexts.email),
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
        Row(
          children: [
            Checkbox(value: true, onChanged: (val) {}),
            Expanded(child: Text(UTexts.rememberMe)),
            TextButton(
              onPressed: () {
                Get.to(() => ForgetPassword());
              },
              child: Text(UTexts.forgetPassword),
            ),
          ],
        ),
        SizedBox(height: uSpaceBtwSections),
        UElevatedButton(onPressed: () => Get.to(() => NavigationMenu()), child: Text(UTexts.signIn)),
        SizedBox(height: uSpaceBtwItems / 2),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(onPressed: () => Get.to(() => SignupSreen()), child: Text(UTexts.createAccount)),
        ),
      ],
    );
  }
}
