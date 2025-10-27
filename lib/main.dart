import 'package:firebase_getx/my_app.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

void main() {

  ///widgets Flutter Binding 
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  ///Flutter native Splash 
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}




