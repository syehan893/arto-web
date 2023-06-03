import 'package:flutter/material.dart';
import 'package:ta_smt4/view/screens/dasbord/dasbord.dart';
import 'package:ta_smt4/view/screens/help/help.dart';
import 'package:ta_smt4/view/screens/history/history.dart';
import 'package:ta_smt4/view/screens/request/request.dart';
import 'package:ta_smt4/view/screens/topUp/topUp.dart';
import 'package:ta_smt4/view/screens/transfer/transfer.dart';

class Navigasi extends StatefulWidget {
  const Navigasi({super.key});

  @override
  State<Navigasi> createState() => _NavigasiState();
}

class _NavigasiState extends State<Navigasi> {
  @override
  Widget build(BuildContext context) {
    double tinggiBody = MediaQuery.of(context).size.height;
    double lebarBody = MediaQuery.of(context).size.width;

     bool _isClicked = false;

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
            Container(
              child: Text( 
                "menu",
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 13,),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isClicked = !_isClicked;
                });
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
                warna: _isClicked? Color.fromARGB(255, 51, 221, 9) : Colors.red
              ),
            ), // dasboard
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(height: 1,width: lebarBody,color: Colors.black,),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isClicked = !_isClicked;
                });
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
                warna: _isClicked? Color.fromARGB(255, 65, 209, 8) : Colors.red
              ),
            ), // transfer
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(height: 1,width: lebarBody,color: Colors.black,),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isClicked = true;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopUp(),
                  ),
                );
              },
              child: Menu(
                icon: Icons.arrow_drop_up_sharp,
                title: "top up",
                warna: _isClicked? Colors.black : Colors.red
              ),
            ), // top up
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(height: 1,width: lebarBody,color: Colors.black,),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isClicked = !_isClicked;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => History(),
                  ),
                );
              },
              child: Menu(
                icon: Icons.history,
                title: "hstory",
                warna: _isClicked? Color.fromARGB(255, 10, 228, 39) : Colors.red
              ),
            ), // history
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(height: 1,width: lebarBody,color: Colors.black,),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isClicked = !_isClicked;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Request(),
                  ),
                );
              },
              child: Menu(
                icon: Icons.request_page,
                title: "request payment",
                warna: _isClicked? Color.fromARGB(255, 61, 194, 8) : Colors.red
              ),
            ), //request payment
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(height: 1,width: lebarBody,color: Colors.black,),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isClicked = !_isClicked;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Help(),
                  ),
                );
              },
              child: Menu(
                icon: Icons.support_agent,
                title: "help",
                warna: _isClicked? Color.fromARGB(255, 85, 228, 18) : Colors.red
              ),
            ),// help
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(height: 1,width: lebarBody,color: Colors.black,),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  Menu({required this.icon, required this.title,required this.warna});
  final IconData icon;
  final String title;
  final Color warna;

  //const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent,
        elevation: 0,
        child: Row(children: [
          Icon(
            icon,
            size: 30,
          ),
          Text(title),
        ]),);
  }
}
