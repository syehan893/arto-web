import 'package:flutter/material.dart';
import 'package:ta_smt4/view/dasbord.dart';
import 'package:ta_smt4/view/menu.dart';
import '../utils/warna.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: primaryColor,
        body: Center(
          child: Container(
            width: 593,
            height: 558,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: secunderColor,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(135, 60, 137, 39),
              child: Column(
                children: [
                  Container(
                    width: 300,
                    height: 100,
                    color: secunderColor,
                    child: Image(
                        image:
                            NetworkImage("https://i.ibb.co/7p7pJjk/logo.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Container(
                      // padding: EdgeInsets.fromLTRB(242, 39, 241, 16),
                      height: 20,
                      child: Text(
                        "username",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      width: 434,
                      height: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: columnLoginColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 20,
                      child: Text(
                        "password",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    width: 434,
                    height: 72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      color: columnLoginColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    width: 177,
                    height: 46,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dasbord(),
                          ),
                        );
                      },
                      child: Text("LOGIN"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: loginButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
