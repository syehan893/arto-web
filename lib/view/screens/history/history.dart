import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_smt4/common/injection/injection.dart';
import 'package:ta_smt4/view/screens/history/cubit/history_cubit.dart';
import 'package:ta_smt4/view/screens/navigasi/navigasi.dart';
import 'package:ta_smt4/view/screens/user/user.dart';
import '../../utils/warna.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  String? selectedNominalTransfer;

  @override
  Widget build(BuildContext context) {
    double tinggiBody = MediaQuery.of(context).size.height;
    double lebarBody = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Row(
      children: [
        const Navigasi(),
        //kiri
        BlocProvider(
          create: (context) => getIt<HistoryCubit>()..getHistories(),
          child: Container(
            width: lebarBody * 0.60,
            height: tinggiBody,
            color: centerPageColor,
            child: BlocBuilder<HistoryCubit, HistoryState>(
              builder: (context, state) {
                if (state is HistoryLoaded) {
                  return Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 48, top: 31),
                          child: Container(
                            child: Text(
                              "History",
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
                            Align(
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
                            ),
                            const SizedBox(
                              height: 39,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                margin: const EdgeInsets.only(right: 23),
                                width: 140,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: const Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    const Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Search...',
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              bottom: 10, left: 5),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 35,
                                      height: 35,
                                      child: IconButton(
                                        icon: const Icon(Icons.search),
                                        onPressed: () {
                                          // Action when search button is pressed
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 52,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 48, right: 19),
                              child: Container(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                width: lebarBody,
                                height: 29,
                                decoration: BoxDecoration(
                                    color: loginButtonColor,
                                    borderRadius: BorderRadius.circular(7)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Nama/jenis transaksi",
                                      style:
                                          GoogleFonts.lato(color: Colors.white),
                                    ),
                                    Text(
                                      "Tanggal",
                                      style:
                                          GoogleFonts.lato(color: Colors.white),
                                    ),
                                    Text(
                                      "Jumlah",
                                      style:
                                          GoogleFonts.lato(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ), // kotak biru
                            const SizedBox(
                              height: 14,
                            ),
                            Container(
                              height: tinggiBody * 0.4,
                              width: lebarBody,
                              color: centerPageColor,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: List.generate(
                                    state.history.length,
                                    (index) => Padding(
                                      padding: const EdgeInsets.only(
                                          left: 49, right: 19),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 50,
                                            width: lebarBody,
                                            child: builTransfer(
                                                state.history[index].name ?? '',
                                                state.history[index].type ?? '',
                                                DateTime.parse(state
                                                        .history[index]
                                                        .createdAt ??
                                                    ''),
                                                10000),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
                return SizedBox.shrink();
              },
            ),
          ),
        ), //tengah
        const User() //kanan
      ],
    ));
  }
}

// card
Card builTransfer(
    String title, String subTitle, DateTime checkDate, int jumlah) {
  return Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 5,
    child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.compare_arrows_outlined),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.lato(fontSize: 14),
                    ),
                    Text(
                      subTitle,
                      style: GoogleFonts.lato(fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(checkDate.toString())],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(jumlah.toString())],
            ),
          ],
        )),
  );
}
