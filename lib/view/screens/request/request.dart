import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_smt4/common/injection/injection.dart';
import 'package:ta_smt4/models/request_payment.dart';
import 'package:ta_smt4/view/screens/navigasi/navigasi.dart';
import 'package:ta_smt4/view/screens/request/cubit/request_payment_cubit.dart';
import 'package:ta_smt4/view/screens/user/user.dart';
import '../../utils/warna.dart';
import 'package:google_fonts/google_fonts.dart';

class Request extends StatelessWidget {
  const Request({super.key});

  @override
  Widget build(BuildContext context) {
    double tinggiBody = MediaQuery.of(context).size.height;
    double lebarBody = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          const Navigasi(),
          BlocProvider(
            create: (context) =>
                getIt<RequestpaymentCubit>()..getRequestPayment(),
            child: Container(
              width: lebarBody * 0.60,
              height: tinggiBody,
              color: centerPageColor,
              child: BlocBuilder<RequestpaymentCubit, RequestPaymentState>(
                builder: (context, state) {
                  if (state is RequestsLoaded) {
                    return Column(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 48, top: 31),
                          child: Container(
                            child: Text(
                              "Request Payment",
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
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                padding: const EdgeInsets.only(left: 48),
                                child: Text(
                                  "Rp ${state.user?.balance},-",
                                  style: GoogleFonts.lato(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            )
                          ],
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
                                    contentPadding:
                                        EdgeInsets.only(bottom: 10, left: 5),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                                height: 35,
                                child: InkWell(
                                  onTap: () {
                                    // Action when search button is pressed
                                  },
                                  child: const Icon(Icons.search),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 47,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48, right: 19),
                        child: Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          width: lebarBody,
                          height: 29,
                          decoration: BoxDecoration(
                              color: loginButtonColor,
                              borderRadius: BorderRadius.circular(7)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Nama/Jenis Transaksi",
                                style: GoogleFonts.lato(color: Colors.white),
                              ),
                              Text(
                                "Tanggal",
                                style: GoogleFonts.lato(color: Colors.white),
                              ),
                              Text(
                                "Jumlah",
                                style: GoogleFonts.lato(color: Colors.white),
                              ),
                              Text(
                                "Tindakan",
                                style: GoogleFonts.lato(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ), // kotak biru
                      const SizedBox(
                        height: 14,
                      ),
                      Container(
                        height: tinggiBody * 0.45,
                        width: lebarBody,
                        color: centerPageColor,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 48, right: 19),
                          child: Column(
                            children: List.generate(
                              state.requests.length,
                              (index) => Column(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: lebarBody,
                                    child: buildRequest(
                                      state.requests[index],
                                      state.requests[index].detail ?? '',
                                      state.requests[index].type ?? '',
                                      DateTime.parse(
                                          state.requests[index].createdAt ??
                                              ''),
                                      double.parse(
                                              state.requests[index].nominal ??
                                                  '0')
                                          .toInt(),
                                    ),
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
                    ]);
                  }
                  return SizedBox.shrink();
                },
              ),
            ),
          ), //kolom tengah
          const User() // kanan
        ],
      ),
    );
  }

  Card buildRequest(RequestPayment request, String title, String subTitle,
      DateTime checkDate, int jumlah) {
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
              Row(
                children: [
                  InkWell(
                    focusColor: Colors.white,
                    onTap: () {
                      getIt<RequestpaymentCubit>().requestPayment(
                          trxId: request.id,
                          isApprove: true,
                          nominal: double.parse(request.nominal ?? '0').toInt());
                    },
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 20, 16, 221),
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    focusColor: Colors.white,
                    onTap: () {
                      getIt<RequestpaymentCubit>().requestPayment(
                          trxId: request.id,
                          isApprove: false,
                          nominal: double.parse(request.nominal ?? '0').toInt());
                      // Aksi yang dilakukan ketika logo ceklis diklik
                    },
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }

// class transfer extends StatelessWidget {
//   const transfer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double tinggiBody = MediaQuery.of(context).size.height;
//     double lebarBody = MediaQuery.of(context).size.width;
//     var checkDate = DateTime.now();

//     return Padding(
//       padding: const EdgeInsets.only(left: 48, right: 19),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 50,
//             width: lebarBody,
//             child: buildRequest(
//               "TRANSFER",
//               "transfer masuk",
//               checkDate,
//               10000,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           SizedBox(
//             height: 50,
//             width: lebarBody,
//             child: buildRequest("TRANSFER", "transfer masuk", checkDate, 70000),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           SizedBox(
//             height: 50,
//             width: lebarBody,
//             child: buildRequest("TOP UP", "transfer masuk", checkDate, 20000),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           SizedBox(
//             height: 50,
//             width: lebarBody,
//             child: buildRequest("TRANSFER", "transfer masuk", checkDate, 70000),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           SizedBox(
//             height: 50,
//             width: lebarBody,
//             child: buildRequest("TOP UP", "transfer masuk", checkDate, 9000),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           SizedBox(
//             height: 50,
//             width: lebarBody,
//             child: buildRequest("TOP UP", "transfer masuk", checkDate, 4000),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//         ],
//       ),
//     );
//   }
// }
}
