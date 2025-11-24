import 'package:firebase_getx/common/widgets/images/user_profilelogo.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UProfilePrimaryHeader extends StatelessWidget {
  const UProfilePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: uProfilePrimaryHeaderHeight + 60),
        UPrimaryHeaderContainer(height: uProfilePrimaryHeaderHeight, child: Container()),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(child: UserProfileLogo()))
      ],
    );
  }
}

