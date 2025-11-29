import 'package:firebase_getx/features/personalizations/screens/edit_profile/edit_profile.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text('Unknow Pro', style: Theme.of(context).textTheme.headlineSmall),
      subtitle: Text('Unknowpro@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
      trailing: IconButton(onPressed: () => Get.to(()=> EditProfileScreen()), icon: Icon(Iconsax.edit)),
    );
  }
}
