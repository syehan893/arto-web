import 'package:easy_sidemenu/easy_sidemenu.dart' as menu;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ta_smt4/view/screens/help/help.dart';

import '../../utils/warna.dart';

class Dasbord extends StatelessWidget {
  const Dasbord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white60,
          width: 200,
          child: Column(
            children: [
              Container(
                width: 177,
                height: 46,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dasbord(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(loginButtonColor),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(secunderColor)),
                  child: Text("TRASNFER"),
                ),
              ),
              Container(
                width: 177,
                height: 46,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dasbord(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(loginButtonColor),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(secunderColor)),
                  child: Text("TOP UP"),
                ),
              ),
              Container(
                width: 177,
                height: 46,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dasbord(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(loginButtonColor),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(secunderColor)),
                  child: Text("HISTORY"),
                ),
              ),
              Container(
                width: 177,
                height: 46,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dasbord(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(loginButtonColor),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(secunderColor)),
                  child: Text("REQUEST PAYMENT"),
                ),
              ),
              Container(
                width: 177,
                height: 46,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Help(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(loginButtonColor),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(secunderColor)),
                  child: Text("HELP help"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
