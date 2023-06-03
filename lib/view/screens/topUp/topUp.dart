import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ta_smt4/view/screens/navigasi/navigasi.dart';

import '../../utils/warna.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  String? selectedNominalTransfer;

  @override
  Widget build(BuildContext context) {
    double tinggiBody = MediaQuery.of(context).size.height;
    double lebarBody = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
         Navigasi(), //kiri
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
                        "Top Up",
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
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "pilih E-wallet",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: tinggiBody * 0.05,
                    width: lebarBody,
                    color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.account_balance_wallet_outlined),
                          label: Text("dana"),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue.shade300),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.account_balance_wallet_outlined),
                          label: Text("ovo"),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.purple.shade300),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.account_balance_wallet_outlined),
                          label: Text("link aja"),
                          style: ElevatedButton.styleFrom(primary: Colors.red),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.account_balance_wallet_outlined),
                          label: Text("gopay"),
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green),
                        )
                      ],
                    ),
                  ),
                ), // tombol topUp
                // kotak input
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  child: Container(
                    height: tinggiBody * 0.50,
                    width: lebarBody,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 194, 118, 118),
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
                              hint: Text("nominal Top Up"),
                              underline: SizedBox(),
                              isExpanded: true,
                              items: [
                                "50.000",
                                "100.000",
                                "150.000",
                                "200.000",
                                "250.000",
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
                        // bank tujuan
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
                                hintText: "nomor",
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
                              child: Text("TOP UP")),
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
              color: Colors.redAccent,
            ),
          ), //kanan
        ],
      ),
    );
  }
}
