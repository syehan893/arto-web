import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

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
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 27,right: 10),
              child: person(
                userName: "Aditya Abdi",
                email: "adityaabdi01@gmail.com",
              ),
            ),
            SizedBox(height: 43,),
            Text("Virtual Card")
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
