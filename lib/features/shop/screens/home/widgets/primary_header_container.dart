import 'package:firebase_getx/common/widgets/circuler_shapes/circular_container.dart';
import 'package:firebase_getx/common/widgets/circuler_shapes/rounded_edges_comtainer.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  const UPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return URoundedEdgesContainer(
      child: Container(
        color: uPrimary,
        height: uHomePrimaryHeaderHeight,
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
