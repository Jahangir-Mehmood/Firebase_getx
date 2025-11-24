import 'package:firebase_getx/common/widgets/appbar/appbar.dart';
import 'package:firebase_getx/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UStorePrimaryHeader extends StatelessWidget {
  const UStorePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // SizedBox(height: uStorePrimaryHeaderHeight * 10),
        UPrimaryHeaderContainer(
          height: uStorePrimaryHeaderHeight,
          child: UAppBar(title: Text('Store',style: Theme.of(context).textTheme.headlineMedium!.apply(color: uWhite)),action: [UCardCounterIcon()],))
      ],
    );
  }
}