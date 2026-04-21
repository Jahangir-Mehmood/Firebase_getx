import 'package:firebase_getx/features/authentication/screens/onboarding/onboarding.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      // home: OnboardingScreen(),
      home: Scaffold(
        backgroundColor: uPrimary,
        body: Center(
          child: CircularProgressIndicator(color: uWhite),
        ),
      ),
      // home: HomeScreen(),
    );
  }
}
