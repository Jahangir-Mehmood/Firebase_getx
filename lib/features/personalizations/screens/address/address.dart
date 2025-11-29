import 'package:firebase_getx/features/personalizations/screens/address/add_new_address.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true,title: Text('Addresses',style: Theme.of(context).textTheme.headlineMedium)),
      body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,child: Column(children: [
          USingleAddress(isSelected: true),
          SizedBox(height: uSpaceBtwItems),
          USingleAddress(isSelected: false),
        ],),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=> Get.to(()=> AddNewAddressScreen()),backgroundColor: uPrimary,child: Icon(Iconsax.add,color: uWhite,),),
    );
  }
}

class USingleAddress extends StatelessWidget {
  const USingleAddress({
    super.key, required this.isSelected,
  });
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return URoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: isSelected ? uPrimary.withValues(alpha: 0.5) : Colors.transparent,
      borderColor: isSelected ? Colors.transparent : dark ? uDarkGrey : uGrey,
      padding: EdgeInsets.all(uMd),
      child: Stack(
        children: [
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Unknow Pro',style: Theme.of(context).textTheme.titleLarge,maxLines: 1,overflow: TextOverflow.ellipsis),
          SizedBox(height: uSpaceBtwItems / 2),
          Text('03445678875',maxLines: 1,overflow: TextOverflow.ellipsis),
          Text('House No 295, Hydrabad , Sindh, Pakistan'),
        ],
      ),
      if(isSelected)
      Positioned(
        top: 0,
        bottom: 0,right: 6,
        child: Icon(Iconsax.tick_circle))
        ],
      )
    );
  }
}