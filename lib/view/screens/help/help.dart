import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ta_smt4/view/screens/navigasi/navigasi.dart';
import 'package:ta_smt4/view/screens/user/user.dart';
import '../../utils/warna.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    double tinggiBody = MediaQuery.of(context).size.height;
    double lebarBody = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          const Navigasi(),
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
                      "Help Center",
                      style: GoogleFonts.lato(
                          fontSize: 32, fontWeight: FontWeight.w400),
                    ),
                  ), //judul
                ),
              ),
              const SizedBox(
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
              const SizedBox(
                height: 38,
              ),
              Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 48),
                        child: Text(
                          "Hi, Randy",
                          style: GoogleFonts.lato(
                              fontSize: 32, fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 52),
                        child: Text(
                          "Need a Help?",
                          style: GoogleFonts.lato(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              Container(
                margin: const EdgeInsets.only(left: 52, right: 19),
                height: 29,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: loginButtonColor,
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 11,
                    ),
                    Text(
                      'Kontak Kami',
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 52,
                    ),
                    helpInfoCard(
                        image: 'web/assets/online_support.png',
                        name: 'Call Center 1',
                        telp: '0251 1234 5670'),
                    const SizedBox(
                      width: 22,
                    ),
                    helpInfoCard(
                        image: 'web/assets/logo_wa.png',
                        name: 'Official Whatsapp',
                        telp: '0251 1234 5670'),
                    const SizedBox(
                      width: 19,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 52,
                    ),
                    helpInfoCard(
                        image: 'web/assets/online_support.png',
                        name: 'Call Center 2',
                        telp: '0251 1234 5670'),
                    const SizedBox(
                      width: 22,
                    ),
                    helpInfoCard(
                        image: 'web/assets/logo_telegram.png',
                        name: 'Official Telegram',
                        telp: '0251 1234 5670'),
                    const SizedBox(
                      width: 19,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              Container(
                margin: const EdgeInsets.only(left: 52, right: 19),
                height: 29,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: loginButtonColor,
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 11,
                    ),
                    Text(
                      'Office Location',
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                width: 739,
                height: 362,
                color: centerPageColor,
                child: Image.asset('web/assets/maps_location.png'),
              )
            ]),
          ),
          const User() // kanan
        ],
      ),
    );
  }

  Expanded helpInfoCard({String? image, String? name, String? telp}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 47,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.horizontal(
            right: Radius.circular(10),
            left: Radius.circular(10),
          ),
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
          color: Colors.grey[300],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image ?? '',
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 23,
              ),
              Text(
                name ?? '',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 23,
              ),
              Text(
                telp ?? '',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
