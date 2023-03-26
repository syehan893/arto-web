import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text(
                "testing di coba",
                style: TextStyle(fontSize: 30),
              ),
              backgroundColor: Colors.amber),
          body: Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.black,
                        child: Row(
                          children: [
                            Container(
                              color: Colors.blue,
                              height: 50,
                              width: 50,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.amber,
                        height: 200,
                        width: 200,
                        child: Text(
                          "test",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.red,
                        height: 200,
                        width: 200,
                      ),
                      Container(
                        color: Colors.blue,
                        height: 200,
                        width: 200,
                      ),
                      Container(
                        color: Colors.pink,
                        height: 200,
                        width: 200,
                        child: Row(
                          children: [
                            Container(
                              color: Colors.green,
                              height: 100,
                              width: 100,
                            ),
                            Container(
                              color: Colors.purple,
                              height: 100,
                              width: 100,
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.black,
                        child: Row(
                          children: [
                            Container(
                              color: Colors.blue,
                              height: 50,
                              width: 50,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.amber,
                        height: 200,
                        width: 200,
                      ),
                      Container(
                        color: Colors.red,
                        height: 200,
                        width: 200,
                      ),
                      Container(
                        color: Colors.blue,
                        height: 200,
                        width: 200,
                      ),
                      Container(
                        color: Colors.pink,
                        height: 200,
                        width: 200,
                        child: Row(
                          children: [
                            Container(
                              color: Colors.green,
                              height: 100,
                              width: 100,
                            ),
                            Container(
                              color: Colors.purple,
                              height: 100,
                              width: 100,
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
