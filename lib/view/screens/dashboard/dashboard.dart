import 'package:easy_sidemenu/easy_sidemenu.dart' as menu;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ta_smt4/view/screens/help/help.dart';
import 'package:ta_smt4/view/screens/request/request.dart';
import 'package:ta_smt4/view/screens/history/history.dart';
import 'package:ta_smt4/view/screens/topUp/topUp.dart';
import 'package:ta_smt4/view/screens/transfer/transfer.dart';
import 'package:ta_smt4/view/screens/user/user.dart';
import '../../utils/warna.dart';
import '../navigasi/navigasi.dart';
//import 'package:google_fonts/google_fonts.dart' as font;
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    double tinggiBody = MediaQuery.of(context).size.height;
    double lebarBody = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          Navigasi(),
          //kiri

          Container(
            width: lebarBody * 0.60,
            height: tinggiBody,
            color: centerPageColor,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 35, right: 32, top: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text("Hi, Aditya Abdi",
                              style: GoogleFonts.lato(
                                  fontSize: 32, fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          child: Text(
                            "Welcome Back!",
                            style: GoogleFonts.lato(fontSize: 20),
                          ),
                        ),
                      ],
                    ), //judul
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 32),
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
                          padding: EdgeInsets.only(left: 35, right: 32),
                          child: Text(
                            "your balance",
                            style: GoogleFonts.lato(fontSize: 13),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.only(left: 35, right: 32),
                          child: Text(
                            "Rp.1.000.000,-",
                            style: GoogleFonts.lato(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35, right: 32),
                        child: Container(
                          height: 288,
                          width: lebarBody,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          //tengah
          User(), //kanan
        ],
      ),
    );
  }
}
