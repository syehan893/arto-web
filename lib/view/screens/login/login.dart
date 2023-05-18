import 'package:flutter/material.dart';
import 'package:ta_smt4/view/screens/dasbord/dasbord.dart';
import '../../utils/warna.dart';
import '../../utils/warna.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  get columnLoginColor => null;

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
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(children: [
                    Container(
                      width: 321,
                      height: 93,
                      color: secunderColor,
                      child: Image(
                          image: NetworkImage(
                              "https://imgtr.ee/images/2023/05/17/vIQJI.png")),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 39),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Container(
                            // padding: EdgeInsets.fromLTRB(242, 39, 241, 16),
                            height: 20,
                            child: Text(
                              "USERNAME",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Container(
                            width: 434,
                            height: 72,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: Colors.grey),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 11),
                          child: Container(
                            // padding: EdgeInsets.fromLTRB(242, 39, 241, 16),
                            height: 20,
                            child: Text(
                              "PASSWORD",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          width: 434,
                          height: 72,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              color: Colors.grey),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Dasbord(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(23.0),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          loginButtonColor),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          secunderColor)),
                              child: Text("LOGIN")),
                        )
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ));
  }
}
