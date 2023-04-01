import 'package:flutter/material.dart';
import 'package:ta_smt4/fitur/login.dart';
import 'utils/warna.dart';

void main() {
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
