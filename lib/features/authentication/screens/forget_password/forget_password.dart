import 'package:firebase_getx/features/authentication/screens/forget_password/reset_password.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              Text(UTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: USizes.spaceBtwItems / 2),
              Text(UTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
              SizedBox(height: USizes.spaceBtwSections * 2),
              TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right))),
              SizedBox(height: USizes.spaceBtwItems),
              UElevatedButton(
                onPressed: () {
                  Get.to(() => ResetPasswordScreen());
                },
                child: Text(UTexts.submit),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
