import 'package:firebase_getx/common/widgets/custom_shapes/circular_container.dart';
import 'package:firebase_getx/common/widgets/custom_shapes/rounded_edges_comtainer.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  const UPrimaryHeaderContainer({super.key, required this.child, required this.height});

  final Widget child;
  final double height;
  @override
  Widget build(BuildContext context) {
    return URoundedEdgesContainer(
      child: Container(
        color: uPrimary,
        height: height,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -160,
              child: UCircularContainer(
                height: uHomePrimaryHeaderHeight,
                width: uHomePrimaryHeaderHeight,
                backgroundColor: uWhite.withValues(alpha: 0.1),
              ),
            ),
            Positioned(
              top: 50,
              right: -250,
              child: UCircularContainer(
                height: uHomePrimaryHeaderHeight,
                width: uHomePrimaryHeaderHeight,
                backgroundColor: uWhite.withValues(alpha: 0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
