import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Container(
            width: 593,
            height: 558,
            color: Colors.white,
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // letakkan kolom di tengah
              children: [
                Container(
                  color: Colors.blueGrey,
                  height: 72,
                  width: 434,
                  child: Center(
                    child: Text(
                      "username",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(height: 28),
                Container(
                  color: Colors.blueGrey,
                  height: 72,
                  width: 434,
                  child: Center(
                    child: Text(
                      "password",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(height: 28),
                Container(
                  color: Colors.blue,
                  height: 46,
                  width: 177,
                  child: Center(
                    child: Text(
                      "login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
