import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../utils/warna.dart';

class Request extends StatelessWidget {
  const Request({super.key});

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
            color: centerPageColor,
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 48, top: 31),
                  child: Container(
                    child: Text(
                      "Request Payment",
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
                          style: TextStyle(fontSize: 13),
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
                          style: TextStyle(fontSize: 32),
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
                    Container(
                      width: 234,
                      height: 35,
                      child: Center(
                        child: Text(
                          "23 januari",
                          style: TextStyle(
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
                          ]),
                    )
                  ],
                ),
              )
            ]),
          ),
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
