import 'package:firebase_getx/utils/constants/imports.dart';

class UHomeAppBar extends StatelessWidget {
  const UHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return UAppBar(
      title: Column(
        children: [
          Text(UTexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: uGrey)),
          Text(UTexts.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: uWhite)),
        ],
      ),
      action: [UCardCounterIcon()],
    );
  }
}
