import 'package:firebase_getx/utils/constants/imports.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true,title: Text('Addresses',style: Theme.of(context).textTheme.headlineMedium)),
      body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,child: Column(
          children: [
            TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: 'Name')),
            SizedBox(height: uSpaceBtwInputFields),
            TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: 'Phone Number')),
            SizedBox(height: uSpaceBtwInputFields),
            Row(
              children: [
                Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: 'Street'))),
                SizedBox(width: uSpaceBtwInputFields),
                Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: 'Postal Code'))),
              ],
            ),
            SizedBox(height: uSpaceBtwInputFields),
            Row(
              children: [
                Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: 'City'))),
                SizedBox(width: uSpaceBtwInputFields),
                Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: 'State'))),
              ],
            ),
            SizedBox(height: uSpaceBtwInputFields),
            TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: 'Country')),
            SizedBox(height: uSpaceBtwSections),
            UElevatedButton(onPressed: (){}, child: Text('Save'))
          ],
        ),),
      ),
    );
  }
}