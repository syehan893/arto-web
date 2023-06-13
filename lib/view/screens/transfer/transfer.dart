import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ta_smt4/common/injection/injection.dart';
import 'package:ta_smt4/view/screens/navigasi/navigasi.dart';
import 'package:ta_smt4/view/screens/transfer/cubit/transfer_cubit.dart';
import 'package:ta_smt4/view/screens/user/user.dart';

import '../../utils/warna.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  String? selectedBank;
  String? selectedNominalTransfer;
  String? noRek;
  int? nominal;
  String? emailReceiver;
  String? detail;

  @override
  Widget build(BuildContext context) {
    double tinggiBody = MediaQuery.of(context).size.height;
    double lebarBody = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          const Navigasi(), //kiri
          BlocProvider(
            create: (context) => getIt<TransferRequestCubit>()..getUser(),
            child: Container(
              width: lebarBody * 0.60,
              height: tinggiBody,
              color: centerPageColor,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 48, top: 31),
                      child: Container(
                        child: Text(
                          "Transfer",
                          style: GoogleFonts.lato(fontSize: 32),
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
                    height: 35,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: const EdgeInsets.only(left: 48),
                            child: Text(
                              "Your Balance",
                              style: GoogleFonts.lato(fontSize: 13),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        BlocBuilder<TransferRequestCubit, TransferRequestState>(
                            builder: (context, state) {
                          if (state is TransferRequestLoaded) {
                            return Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                padding: const EdgeInsets.only(left: 48),
                                child: Text(
                                  "Rp.${state.user?.balance},-",
                                  style: GoogleFonts.lato(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            );
                          }
                          return SizedBox.shrink();
                        }),
                      ],
                    ),
                  ),
                  // kotak input
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 124, right: 124, top: 28),
                    child: Container(
                      height: 565,
                      width: 515,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 434,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: columnLoginColor),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: TextField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  hintText: "Nominal transfer",
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    nominal = int.parse(value);
                                  });
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: 434,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: columnLoginColor),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: DropdownButton<String>(
                                value: selectedBank,
                                onChanged: (value) {
                                  setState(() {
                                    selectedBank = value!;
                                  });
                                },
                                hint: const Text("bank tujuan"),
                                underline: const SizedBox(),
                                isExpanded: true,
                                items: ["BRI", "BCA", "BNI", "PERMATA"]
                                    .map<DropdownMenuItem<String>>(
                                        (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(e.toString()),
                                            ))
                                    .toList(),
                              ),
                            ),
                          ), // bank tujuan
                          Container(
                            width: 434,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: columnLoginColor),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: TextField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  hintText: "nomer req",
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    noRek = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: 434,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: columnLoginColor),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: TextField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  hintText: "email penerima",
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    emailReceiver = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: 434,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: columnLoginColor),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: TextField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  hintText: "keterangan",
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    detail = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 177,
                            height: 46,
                            child: ElevatedButton(
                                onPressed: () {
                                  getIt<TransferRequestCubit>().transfer(
                                    detail: detail,
                                    emailReceiver: emailReceiver,
                                    noRek: noRek,
                                    nominal: nominal,
                                  );
                                },
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(23.0),
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            loginButtonColor),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            secunderColor)),
                                child: const Text("TRANSFER")),
                          )
                        ],
                      ),
                    ),
                  ) // kotak transfer
                ],
              ),
            ),
          ), //tengah
          const User() //kanan
        ],
      ),
    );
  }
}
