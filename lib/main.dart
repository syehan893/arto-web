import 'package:flutter/material.dart';
import 'package:ta_smt4/common/injection/injection.dart';
import 'package:ta_smt4/view/screens/splash/splash_screen.dart';

void main() async {
  await Future.wait([
    configureDependencies(),
  ]);
  WidgetsFlutterBinding.ensureInitialized();
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
