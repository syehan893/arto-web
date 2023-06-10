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
                          child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Lastest transaction",
                                  style: GoogleFonts.lato(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  children: [
                                    LastestTrx(
                                        harga: 8989,
                                        tipy: "makanan",
                                        nama: "ichiban",
                                        waktu: DateTime.now()),
                                    SizedBox(
                                      width: 28,
                                    ),
                                    LastestTrx(
                                        harga: 8989,
                                        tipy: "makanan",
                                        nama: "ichiban",
                                        waktu: DateTime.now())
                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 130,
                              width: 1,
                              color: Colors.black,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Subsrciptions",
                                  style: GoogleFonts.lato(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  children: [
                                    LastestTrx(
                                        harga: 8989,
                                        tipy: "makanan",
                                        nama: "ichiban",
                                        waktu: DateTime.now()),
                                    SizedBox(
                                      width: 28,
                                    ),
                                    LastestTrx(
                                        harga: 8989,
                                        tipy: "makanan",
                                        nama: "ichiban",
                                        waktu: DateTime.now())
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )),
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
                            padding: EdgeInsets.only(left: 105),
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
                            topUp(nama: "DANA", warna: Colors.amber),
                            topUp(nama: "OVO", warna: Colors.purple),
                            topUp(nama: "linkAja!", warna: Colors.red),
                            topUp(nama: "Gopay", warna: Colors.green)
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

class LastestTrx extends StatelessWidget {
  LastestTrx(
      {required this.harga,
      required this.tipy,
      required this.nama,
      required this.waktu});
  final int harga;
  final String tipy;
  final String nama;
  final DateTime waktu;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
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
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 25,
                    width: 25,
                    child: Icon(
                      Icons.person_outline_sharp,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rp.$harga,-",
                        style: GoogleFonts.lato(fontSize: 12),
                      ),
                      Text(tipy, style: GoogleFonts.lato(fontSize: 10))
                    ],
                  ),
                ),
              ],
            ),
            Text(nama),
            Text(waktu.toString()),
          ],
        ),
      ),
    );
  }
}

class topUp extends StatelessWidget {
  topUp({required this.nama, required this.warna});
  final String nama;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: 128,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: warna,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              )
            ]),
        child: Row(children: [
          Icon(Icons.account_balance_wallet_outlined,color: Colors.white,size: 40,),
          SizedBox(width: 20,),
          Text(nama,style:GoogleFonts.lato(color: Colors.white,fontWeight: FontWeight.w700),)
        ]),
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