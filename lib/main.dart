import 'package:flutter/material.dart';
import 'package:ta_smt4/view/screens/login/login.dart';
import 'view/utils/warna.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => LoginPage(),
      },
      initialRoute: "/",
    );
  }
}
// test
