import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../utils/warna.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  String? selectedNominalTransfer;

  @override
  Widget build(BuildContext context) {
    double tinggiBody = MediaQuery.of(context).size.height;
    double lebarBody = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Row(
      children: [
        Expanded(
          child: Container(
              width: lebarBody * 0.20,
              height: tinggiBody,
              color: sideLeftColor),
        ), //kiri
        Container(
          width: lebarBody * 0.60,
          height: tinggiBody,
          color: Colors.white54,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Text(
                      "history",
                      style: TextStyle(fontSize: 32),
                    ),
                  ), //judul
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 2,
                  width: lebarBody,
                  color: Colors.black,
                ), //garis
              ),
              Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("your balance"),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Rp.1.000.000,-",
                          style: TextStyle(fontSize: 32),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: lebarBody * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Container(
                              height: 30,
                              width: 100,
                              color: Color.fromARGB(255, 233, 220, 220),
                              child: Text("filter"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 300),
                            child: Container(
                              height: 30,
                              width: 200,
                              color: Color.fromARGB(255, 231, 221, 221),
                              child: Text("tanggal"),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            color: Color.fromARGB(255, 221, 211, 211),
                            child: Text("cari"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: lebarBody,
                        height: 50,
                        color: loginButtonColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ), //tengah
        Expanded(
          child: Container(
            width: lebarBody * 0.20,
            height: tinggiBody,
            color: sideRightColor,
          ),
        ), //kanan
      ],
    ));
  }
}

class nama {}
