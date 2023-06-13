import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ta_smt4/common/injection/injection.dart';
import 'package:ta_smt4/view/screens/splash/splash_screen.dart';
import 'package:meta_seo/meta_seo.dart';
void main() async {
  await Future.wait([
    configureDependencies(),
  ]);
  WidgetsFlutterBinding.ensureInitialized();
  
 if (kIsWeb) {
    MetaSEO().config();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const SplashScreen(),
      },
      initialRoute: "/",
    );
  }
}
