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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      height: 100,
                      color: Colors.white,
                      child: Image(
                          image: NetworkImage(
                              "https://i.ibb.co/7p7pJjk/logo.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        width: 434,
                        height: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          color: Colors.blueGrey,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Container(
                      width: 434,
                      height: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: Colors.blueGrey,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
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
                          onPressed: () {}, child: Text("LOGIN")),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
