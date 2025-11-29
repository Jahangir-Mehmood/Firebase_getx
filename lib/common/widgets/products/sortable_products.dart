import 'package:firebase_getx/common/widgets/layouts/grid_layout.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UsortableProducts extends StatelessWidget {
  const UsortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: InputDecoration(prefix: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: ['Lower Price', 'Name', 'Higher Price', 'Sale', 'Newest'].map((filter) {
            return DropdownMenuItem(value: filter, child: Text(filter));
          }).toList(),
        ),
        SizedBox(height: uSpaceBtwSections),
        UGridLayout(itemCount: 10, itemBuilder: (context, index) => UProductCardVertical(),)
    
      ],
    );
  }
}