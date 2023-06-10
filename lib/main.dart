import 'package:flutter/material.dart';
import 'package:ta_smt4/view/screens/login/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const LoginPage(),
      },
      initialRoute: "/",
    );
  }
}
// test
