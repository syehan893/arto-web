import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ta_smt4/view/screens/history/history.dart';
import 'package:ta_smt4/view/screens/navigasi/navigasi.dart';
import 'package:ta_smt4/view/screens/user/user.dart';
import '../../utils/warna.dart';
import 'package:google_fonts/google_fonts.dart';

class Request extends StatelessWidget {
  const Request({super.key});

  @override
  Widget build(BuildContext context) {
    double tinggiBody = MediaQuery.of(context).size.height;
    double lebarBody = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          Navigasi(),
          Container(
            width: lebarBody * 0.60,
            height: tinggiBody,
            color: centerPageColor,
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 48, top: 31),
                  child: Container(
                    child: Text(
                      "Request Payment",
                      style: GoogleFonts.lato(fontSize: 32),
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
                  height: 2,
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
                          "Your Balance",
                          style: GoogleFonts.lato(fontSize: 13),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.only(left: 48),
                        child: Text(
                          "Rp 1.998.000.000,-",
                          style: GoogleFonts.lato(fontSize: 32),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 39,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 52,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 35,
                        child: Center(
                          child: Text(
                            "23 januari",
                            style: GoogleFonts.lato(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ),
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
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 365,
                    ),
                    Expanded(
                      child: Container(
                        height: 35,
                        child: Center(
                          child: Text(
                            "search",
                            style: GoogleFonts.lato(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ),
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
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 19,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 47,
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
                        "Nama/Jenis Transaksi",
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                      Text(
                        "Tanggal",
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                      Text(
                        "Jumlah",
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                      Text(
                        "Tindakan",
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ), // kotak biru
              SizedBox(
                height: 14,
              ),
              Container(
                height: tinggiBody * 0.35,
                width: lebarBody,
                color: centerPageColor,
                child: ListView(
                  children: [transfer()],
                ),
              )
            ]),
          ), //kolom tengah
          User() // kanan
        ],
      ),
    );
  }
}

class transfer extends StatelessWidget {
  const transfer({super.key});

  @override
  Widget build(BuildContext context) {
    double tinggiBody = MediaQuery.of(context).size.height;
    double lebarBody = MediaQuery.of(context).size.width;
    var checkDate = new DateTime.now();

    return Padding(
      padding: const EdgeInsets.only(left: 48, right: 19),
      child: Column(
        children: [
          Container(
            height: 50,
            width: lebarBody,
            child: builTransfer("TRANSFER", "transfer masuk", checkDate, 10000),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: lebarBody,
            child: builTransfer("TRANSFER", "transfer masuk", checkDate, 70000),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: lebarBody,
            child: builTransfer("TOP UP", "transfer masuk", checkDate, 20000),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: lebarBody,
            child: builTransfer("TRANSFER", "transfer masuk", checkDate, 70000),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: lebarBody,
            child: builTransfer("TOP UP", "transfer masuk", checkDate, 9000),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: lebarBody,
            child: builTransfer("TOP UP", "transfer masuk", checkDate, 4000),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
