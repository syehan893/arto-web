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
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 32),
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
                          padding: EdgeInsets.only(left: 35, right: 32),
                          child: Text(
                            "Your Balance",
                            style: GoogleFonts.lato(fontSize: 13),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.only(left: 35, right: 32),
                          child: Text(
                            "Rp.2.000.000.000,-",
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
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Container(
                            padding: const EdgeInsets.only(left: 20, top: 14),
                            child: Text(
                                style: GoogleFonts.lato(
                                    fontSize: 24, fontWeight: FontWeight.w700),
                                "Spending Activity"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Lastest transaction",
                            style: GoogleFonts.lato(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 208,
                          ),
                          Text(
                            "Subscriptions",
                            style: GoogleFonts.lato(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 28,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 161,
                              height: 85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
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
                              width: 161,
                              height: 85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
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
                              width: 161,
                              height: 85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
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
                              width: 161,
                              height: 85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
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
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Lihat transaksi lainnya >>",
                            style: GoogleFonts.lato(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 208,
                          ),
                          Text(
                            "Lihat transaksi lainnya >>",
                            style: GoogleFonts.lato(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 45,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            padding: EdgeInsets.only(left: 55),
                            child: Text(
                              "Top Up",
                              style: GoogleFonts.lato(
                                  fontSize: 24, fontWeight: FontWeight.w700),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 128,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.blue,
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
                              width: 128,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.purple,
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
                              width: 128,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.red,
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
                              width: 128,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.green,
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


// import 'data_repository.dart';

// class MyApp extends StatelessWidget {
//   final DataRepository _dataRepository = DataRepository();

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<DataResponse>(
//       future: _dataRepository.getData(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           // tampilkan data
//           return Text(snapshot.data.data.toString());
//         } else if (snapshot.hasError) {
//           // tampilkan pesan kesalahan
//           return Text(snapshot.error.toString());
//         } else {
//           // tampilkan widget loading
//           return CircularProgressIndicator();
//         }
//       },
//     );
//   }
// }