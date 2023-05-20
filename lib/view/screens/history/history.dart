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
                  padding: const EdgeInsets.only(left: 48, top: 31),
                  child: Container(
                    child: Text(
                      "history",
                      style: TextStyle(fontSize: 32),
                    ),
                  ), //judul
                ),
              ),
              SizedBox(
                height: 52,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48, right: 19),
                child: Container(
                  height: 1,
                  width: lebarBody,
                  color: Colors.black,
                ), //garis
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.only(left: 48),
                        child: Text(
                          "your balance",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.only(left: 48),
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
                      padding: const EdgeInsets.only(left: 48),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 30,
                              width: 100,
                              child: Center(child: Text("filter")),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    )
                                  ]),
                            ),
                            Container(
                              height: 30,
                              width: 200,
                              child: Center(child: Text("tanggal")),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    )
                                  ]),
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              child: Center(child: Text("cari")),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 52,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48, right: 19),
                      child: Container(
                        width: lebarBody,
                        height: 29,
                        decoration: BoxDecoration(
                            color: loginButtonColor,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "nama/jenis transaksi",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "tanggal",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "jumlah",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ) // kotak biru
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
