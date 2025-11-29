import 'package:firebase_getx/utils/constants/imports.dart';

class UserProfileLogo extends StatelessWidget {
  const UserProfileLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UCircularImage(
      borderWidth: 5,
    height: 120,
    width: 120,
      image: profileLogo);
  }
}