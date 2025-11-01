import 'package:firebase_getx/utils/constants/imports.dart';

class USocialButtond extends StatelessWidget {
  const USocialButtond({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildButton(googleIcon, () {}),
        SizedBox(width: uSpaceBtwItems),
        buildButton(facebookIcon, () {}),
      ],
    );
  }

  Container buildButton(String image, VoidCallback onPress) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: uGrey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPress,
        icon: Image.asset(image, height: uIconMd, width: uIconMd),
      ),
    );
  }
}
