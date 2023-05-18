import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
          Expanded(
            child: Container(
              width: lebarBody * 0.20,
              height: tinggiBody,
              color: sideLeftColor,
            ),
          ),
          Container(
              width: lebarBody * 0.60,
              height: tinggiBody,
              color: Colors.white12,
              child: Column(children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 48, top: 31),
                    child: Container(
                      child: Text(
                        "Help Center",
                        style: TextStyle(fontSize: 32),
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
                    height: 1,
                    width: lebarBody,
                    color: Colors.black,
                  ), //garis
                ),
                SizedBox(
                  height: 38,
                ),
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.only(left: 48),
                          child: Text(
                            "Hi, Randy",
                            style: TextStyle(fontSize: 32),
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
                          padding: EdgeInsets.only(left: 52),
                          child: Text(
                            "Need a Help?",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 38,
                ),
                Container(
                  margin: EdgeInsets.only(left: 52, right: 19),
                  height: 29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color.fromARGB(255, 7, 9, 121),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        'Kontak Kami',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 52, right: 22),
                        height: 47,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
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
                          child: Text(
                            'Kontainer Kiri',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 19),
                        height: 47,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10),
                            right: Radius.circular(10),
                          ),
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          color: Colors.grey[300],
                        ),
                        child: Center(
                          child: Text(
                            'Kontainer Kanan',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ])),
          Expanded(
              child: Container(
            width: lebarBody * 0.20,
            height: tinggiBody,
            color: sideRightColor,
          ))
        ],
      ),
    );
  }
}
