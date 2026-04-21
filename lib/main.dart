import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_getx/data/repositories/autentication_repositories.dart';
import 'package:firebase_getx/firebase_options.dart';
import 'package:firebase_getx/my_app.dart';
import 'package:firebase_getx/utils/constants/imports.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  ///widgets Flutter Binding
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // /Flutter native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  GetStorage.init();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) {
    Get.put(AutenticationRepositories());
  });

  ///only
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}
