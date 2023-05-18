import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../utils/warna.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  String? selectedBank;
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
              color: sideLeftColor,
            ),
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
                        "Transfer",
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
                          child: Text("yout balance"),
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
                      )
                    ],
                  ),
                ),
                // kotak input
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  child: Container(
                    height: tinggiBody * 0.60,
                    width: lebarBody,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 101, 209, 80),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 434,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              color: Colors.grey),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: DropdownButton<String>(
                              value: selectedNominalTransfer,
                              onChanged: (value) {
                                setState(() {
                                  selectedNominalTransfer = value!;
                                });
                              },
                              hint: Text("nominal transfer"),
                              underline: SizedBox(),
                              isExpanded: true,
                              items: [
                                "500.000",
                                "1.000.000",
                                "3.000.000",
                                "5.000.000"
                              ]
                                  .map<DropdownMenuItem<String>>(
                                      (e) => DropdownMenuItem(
                                            child: Text(e.toString()),
                                            value: e,
                                          ))
                                  .toList(),
                            ),
                          ),
                        ),
                        Container(
                          width: 434,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              color: Colors.grey),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: DropdownButton<String>(
                              value: selectedBank,
                              onChanged: (value) {
                                setState(() {
                                  selectedBank = value!;
                                });
                              },
                              hint: Text("bank tujuan"),
                              underline: SizedBox(),
                              isExpanded: true,
                              items: ["BRI", "BCA", "BNI", "PERMATA"]
                                  .map<DropdownMenuItem<String>>(
                                      (e) => DropdownMenuItem(
                                            child: Text(e.toString()),
                                            value: e,
                                          ))
                                  .toList(),
                            ),
                          ),
                        ), // bank tujuan
                        Container(
                          width: 434,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              color: Colors.grey),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: TextField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                hintText: "nomer req",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 434,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              color: Colors.grey),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: TextField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                hintText: "email penerima",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 434,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              color: Colors.grey),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: TextField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                hintText: "keterangan",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 177,
                          height: 46,
                          child: ElevatedButton(
                              onPressed: () {},
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
                              child: Text("TRANSFER")),
                        )
                      ],
                    ),
                  ),
                ) // kotak transfer
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
      ),
    );
  }
}
