import 'package:firebase_getx/common/widgets/layouts/grid_layout.dart';
import 'package:firebase_getx/common/widgets/products/sortable_products.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class AllProductScreen extends StatelessWidget {
  const AllProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('Popular Products', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: UsortableProducts(),
        ),
      ),
    );
  }
}


