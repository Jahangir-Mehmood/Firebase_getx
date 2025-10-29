import 'package:firebase_getx/common/widgets/circuler_shapes/circular_container.dart';
import 'package:firebase_getx/common/widgets/circuler_shapes/rounded_edges_comtainer.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class uPrimaryHeaderContainer extends StatelessWidget {
  const uPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return URoundedEdgesContainer(
      child: Container(
        color: uPrimary,
        height: UDeviceHelper.getScreenHeight(context) * 0.4,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -160,
              child: UCirculeContainer(
                height: UDeviceHelper.getScreenHeight(context) * 0.4,
                width: UDeviceHelper.getScreenHeight(context) * 0.4,
                backGroundColor: uWhite.withValues(alpha: 0.1),
              ),
            ),
            Positioned(
              top: 50,
              right: -250,
              child: UCirculeContainer(
                height: UDeviceHelper.getScreenHeight(context) * 0.4,
                width: UDeviceHelper.getScreenHeight(context) * 0.4,
                backGroundColor: uWhite.withValues(alpha: 0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
