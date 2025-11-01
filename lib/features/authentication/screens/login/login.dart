import 'package:firebase_getx/common/widgets/button/social_button.dart';
import 'package:firebase_getx/common/widgets/login_signup/form_divider.dart';
import 'package:firebase_getx/features/authentication/screens/forget_password/forget_password.dart';
import 'package:firebase_getx/features/authentication/screens/signup/signup.dart';
import 'package:firebase_getx/navigation_menu.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

part '../login/widgets/login_form.dart';
part '../login/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _ULoginHeader(),
              SizedBox(height: uSpaceBtwSections),
              _ULoginForm(),
              SizedBox(height: uSpaceBtwSections),
              UFormDivider(title: UTexts.orSignInWith),
              SizedBox(height: uSpaceBtwSections),
              USocialButtond(),
            ],
          ),
        ),
      ),
    );
  }
}
