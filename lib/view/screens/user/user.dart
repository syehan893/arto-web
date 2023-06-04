import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:ta_smt4/view/utils/warna.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    double tinggiBody = MediaQuery.of(context).size.height;
    double lebarBody = MediaQuery.of(context).size.width;

    return Expanded(
      child: Container(
        width: lebarBody * 0.20,
        height: tinggiBody,
        color: sideRightColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 69, top: 27, right: 54),
              child: person(
                userName: "Aditya Abdi",
                email: "adityaabdi01@gmail.com",
              ),
            ), // user
            SizedBox(
              height: 43,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 14,left: 29),
              child: Text(
                "Virtual Card",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26,right: 25),
              child: VRcard(),
            ), // virtual card
            Padding(
              padding: const EdgeInsets.only(left: 29,right: 25),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 180,
                    child: Center(
                        child: Text(
                      "1232 4567 8927",
                      style: TextStyle(fontSize: 15),
                    )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                  ), // no req
                  SizedBox(width: 40,),
                  Container(
                    height: 20,
                    width: 70,
                    child: Center(
                        child: Text(
                      "COPY",
                      style: TextStyle(fontSize: 15),
                    )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.amber,
                    ),
                  ), // copy
                ],
              ),
            ), // onmer reg
            SizedBox(
              height: 49,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26,right:25 ),
              child: Text(
                "Promotion",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26,right: 25),
              child: Container(
                height: 211,
                width: 292,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class person extends StatelessWidget {
  person({required this.userName, required this.email});
  final String userName;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 48,
        width: 222,
        child: Row(
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
                    userName,
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(email, style: TextStyle(fontSize: 10))
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.settings),
              color: Colors.black,
              iconSize: 20,
              onPressed: () {
                // aksi yang akan dilakukan ketika icon button di-klik
              },
            )
          ],
        ),
      ),
    );
  }
}

class VRcard extends StatelessWidget {
  const VRcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: loginButtonColor,
      //color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: 171,
        width: 294,
        //child: Image.asset('web/assets/logo-arto.png'),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
                width: 50,
                child: Image.asset('web/assets/visa.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Rp.2.000.000,-",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: 100,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "ADITYA",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "ABDI",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
