import 'package:flutter/material.dart';
import 'package:ta_smt4/view/screens/dasbord/dasbord.dart';
import 'package:ta_smt4/view/screens/help/help.dart';
import 'package:ta_smt4/view/screens/history/history.dart';
import 'package:ta_smt4/view/screens/request/request.dart';
import 'package:ta_smt4/view/screens/topUp/topUp.dart';
import 'package:ta_smt4/view/screens/transfer/transfer.dart';

class Naigasi extends StatefulWidget {
  const Naigasi({super.key});

  @override
  State<Naigasi> createState() => _NaigasiState();
}

class _NaigasiState extends State<Naigasi> {
  @override
  Widget build(BuildContext context) {
    double tinggiBody = MediaQuery.of(context).size.height;
    double lebarBody = MediaQuery.of(context).size.width;

    return Expanded(
      child: Container(
        width: lebarBody * 0.20,
        height: tinggiBody,
        color: Colors.grey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 41, top: 43, right: 86),
              child: Container(
                width: 227,
                height: 55,
                child: Image.asset('web/assets/logo-arto.png'),
              ),
            ),
            SizedBox(
              height: 63,
            ),
            Text(
              "menu",
              style: TextStyle(fontSize: 13),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dasbord(),
                  ),
                );
              },
              child: Menu(
                icon: Icons.home_filled,
                title: "dashboard",
              ),
            ), // dasboard
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Transfer(),
                  ),
                );
              },
              child: Menu(
                icon: Icons.compare_arrows,
                title: "transfer",
              ),
            ), // transfer
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopUp(),
                  ),
                );
              },
              child: Menu(
                icon: Icons.arrow_drop_up,
                title: "top up",
              ),
            ), // top up
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => History(),
                  ),
                );
              },
              child: Menu(
                icon: Icons.arrow_drop_up,
                title: "hstory",
              ),
            ), // history
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Request(),
                  ),
                );
              },
              child: Menu(
                icon: Icons.arrow_drop_up,
                title: "request payment",
              ),
            ), //request payment
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Help(),
                  ),
                );
              },
              child: Menu(
                icon: Icons.arrow_drop_up,
                title: "help",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  Menu({required this.icon, required this.title});
  final IconData icon;
  final String title;

  //const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        elevation: 0,
        child: Row(children: [
          Icon(
            icon,
            size: 30,
          ),
          Text(title),
        ]));
  }
}
