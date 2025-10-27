import 'package:firebase_getx/common/widgets/button/social_button.dart';
import 'package:firebase_getx/common/widgets/login_signup/form_divider.dart';
import 'package:firebase_getx/features/authentication/screens/signup/widgets/sign_up.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class SignupSreen extends StatelessWidget {
  const SignupSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(UTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: USizes.spaceBtwSections),
              USignUp(),
              // _ULoginForm(),
              SizedBox(height: USizes.spaceBtwSections),
              UFormDivider(title: UTexts.orSignupWith),
              SizedBox(height: USizes.spaceBtwSections),
              USocialButtond()
              
              // USocialButtond(),
            ],
          ),
        ),
      ),
    );
  }
}


