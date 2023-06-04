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
import 'package:google_fonts/google_fonts.dart';
class Dasbord extends StatelessWidget {
  const Dasbord({super.key});

  @override
  Widget build(BuildContext context) {
    double tinggiBody = MediaQuery.of(context).size.height;
    double lebarBody = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
         Navigasi(
          
         ),
          //kiri

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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Hi, Aditya Abdi",
                            style: GoogleFonts.lato(fontSize: 32),                          ),
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
