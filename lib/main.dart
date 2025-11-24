import 'package:firebase_getx/my_app.dart';
import 'package:firebase_getx/utils/constants/imports.dart';
import 'package:flutter/services.dart';

void main() {

  ///widgets Flutter Binding 
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  ///Flutter native Splash 
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);


///only 
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}




