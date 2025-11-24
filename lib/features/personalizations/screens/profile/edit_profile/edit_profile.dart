
import 'package:firebase_getx/common/widgets/appbar/appbar.dart';
import 'package:firebase_getx/common/widgets/icons/circular_icon.dart';
import 'package:firebase_getx/common/widgets/images/user_profilelogo.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true,title: Text('Change Name',style: Theme.of(context).textTheme.headlineMedium)),
      body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,child: Column(children: [
          UserProfileWithEditIcon(),
          SizedBox(height: uSpaceBtwSections),
          Divider(),
          USectionHeading(showActionButton: false,title: 'Account Settings'),
          SizedBox(height: uSpaceBtwSections),
          UserDetailRow(title: 'Name', value: 'Unknow Pro',onTap: (){}),
          UserDetailRow(title: 'Username', value: 'unknow_pro111',onTap: (){}),
          SizedBox(height: uSpaceBtwSections),
          Divider(),
          SizedBox(height: uSpaceBtwSections),
          USectionHeading(showActionButton: false,title: 'Account Settings'),
          SizedBox(height: uSpaceBtwSections),
          UserDetailRow(title: 'User Id', value: 'Unknow Pro',onTap: (){}),
          UserDetailRow(title: 'Email', value: 'Unknow Pro',onTap: (){}),
          UserDetailRow(title: 'Phone Nomber', value: '+923566765447',onTap: (){}),
          UserDetailRow(title: 'Gender', value: 'Male',onTap: (){}),
          SizedBox(height: uSpaceBtwSections),
          Divider(),
          SizedBox(height: uSpaceBtwSections),
          TextButton(onPressed: (){}, child: Text('Close Account',style: TextStyle(color: Colors.red),))
        ]),),
      ),
    );
  }
}

class UserDetailRow extends StatelessWidget {
  const UserDetailRow({
    super.key, required this.title, required this.value, this.icon = Iconsax.arrow_right_34, required this.onTap,
  });
final String title, value;
final IconData? icon;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: uSpaceBtwItems / 1.5),
        child: Row(
          children: [
          Expanded(
            flex: 3,
            child: Text(title,style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis)),
          Expanded(
            flex: 5,child: Text(value,style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis)),
          Expanded(child: Icon(icon,size: uIconSm))
        ],),
      ),
    );
  }
}

class UserProfileWithEditIcon extends StatelessWidget {
  const UserProfileWithEditIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: UserProfileLogo()),
        Positioned(
          bottom: 0,
          right: 100,
          child: Center(child: UCircularIcon(icon: Iconsax.edit)))
      ],
    );
  }
}