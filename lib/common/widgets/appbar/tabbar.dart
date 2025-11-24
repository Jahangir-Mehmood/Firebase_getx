import 'package:firebase_getx/utils/constants/imports.dart';

class UTabBar extends StatelessWidget implements PreferredSizeWidget{
  const UTabBar({
    super.key,
    required this.tabs
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? uBlack : uWhite,
      child: TabBar(
          isScrollable: true,
          labelColor: dark ? uWhite : uPrimary,
          unselectedLabelColor: uDarkGrey,
          indicatorColor: uPrimary,
          tabs: tabs),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(UDeviceHelper.getAppBarHeight());
}