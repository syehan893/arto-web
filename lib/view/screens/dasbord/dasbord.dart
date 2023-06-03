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
          ),
          //tengah
          User(), //kanan
        ],
      ),
    );
  }
}
