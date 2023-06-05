import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ta_smt4/view/screens/navigasi/navigasi.dart';
import 'package:ta_smt4/view/screens/user/user.dart';

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
            color: centerPageColor,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 48, top: 32),
                    child: Container(
                      child: Text(
                        "Top Up",
                        style: GoogleFonts.lato(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ), //judul
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48, right: 19),
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
                          padding: EdgeInsets.only(left: 48),
                          child: Text(
                            "your balance",
                            style: GoogleFonts.lato(fontSize: 13),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.only(left: 48),
                          child: Text(
                            "Rp.1.000.000,-",
                            style: GoogleFonts.lato(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: lebarBody * 0.01,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.only(left: 48),
                          child: Text("Pilih E-wallet",
                              style: GoogleFonts.lato(fontSize: 13)),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.account_balance_wallet_outlined),
                          label: Text("dana"),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(150, 45),
                            primary: Colors.blue.shade300,
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.account_balance_wallet_outlined),
                          label: Text("ovo"),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 45),
                              primary: Colors.purple.shade300),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.account_balance_wallet_outlined),
                          label: Text("link aja"),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 45), primary: Colors.red),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.account_balance_wallet_outlined),
                          label: Text("gopay"),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 45),
                              primary: Colors.green),
                        )
                      ],
                    ),
                  ),
                ), // tombol topUp
                // kotak input
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  child: Container(
                    height: 565,
                    width: 617,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 434,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              color: columnLoginColor),
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
                              color: columnLoginColor),
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
                              color: columnLoginColor),
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
                              color: columnLoginColor),
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
          User(), //kanan
        ],
      ),
    );
  }
}
