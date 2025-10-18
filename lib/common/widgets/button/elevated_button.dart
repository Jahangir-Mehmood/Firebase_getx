import 'package:firebase_getx/utils/constants/imports.dart';

class UElevatedButton extends StatelessWidget {
  const UElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: UDeviceHelper.getScreenWidth(context),
      child: ElevatedButton(onPressed: (){}, child: Text('Next')),
    );
  }
}