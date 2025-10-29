import 'package:firebase_getx/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:firebase_getx/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: uPrimaryHeaderContainer(child: Column(children: [UHomeAppBar()])),
    );
  }
}
