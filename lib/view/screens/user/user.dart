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
        color: Colors.redAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 27, right: 10),
              child: person(
                userName: "Aditya Abdi",
                email: "adityaabdi01@gmail.com",
              ),
            ),
            SizedBox(
              height: 43,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Virtual Card",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            VRcard()
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
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Card(
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
                Text("Rp.2.000.000,-",style: TextStyle(color: Colors.white),),
                SizedBox(
                  height: 10,
                ),
                Container(height: 1,width: 100,color: Colors.white,),
                SizedBox(
                  height: 10,
                ),
                Text("ADITYA",style: TextStyle(color: Colors.white),),
                Text("ABDI",style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
