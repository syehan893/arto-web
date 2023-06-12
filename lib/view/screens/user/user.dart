// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ta_smt4/common/injection/injection.dart';
import 'package:ta_smt4/view/utils/warna.dart';

import 'cubit/user_cubit.dart';

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

    return BlocProvider(
      create: (context) => getIt<UserCubit>()..getUser(),
      child: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state is UserLoaded) {
            return Expanded(
              child: Container(
                width: lebarBody * 0.20,
                height: tinggiBody,
                color: sideRightColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 69, top: 27, right: 54),
                      child: person(
                        userName: state.user?.name ?? '',
                        email: state.user?.email ?? '',
                      ),
                    ), // user
                    const SizedBox(
                      height: 43,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14, left: 29),
                      child: Text(
                        "Virtual Card",
                        style:
                            GoogleFonts.lato(color: Colors.white, fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 26, right: 25),
                      child: VRcard(
                        nameCard: state.user?.name ?? '',
                        nominal: state.user?.balance ?? '',
                      ),
                    ), // virtual card
                    Padding(
                      padding: const EdgeInsets.only(left: 29, right: 25),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              state.user?.cardNumber ?? '',
                              style: GoogleFonts.lato(fontSize: 15),
                            )),
                          ), // no req
                          const SizedBox(
                            width: 40,
                          ),
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.amber,
                            ),
                            child: Center(
                                child: Text(
                              "COPY",
                              style: GoogleFonts.lato(fontSize: 15),
                            )),
                          ), // copy
                        ],
                      ),
                    ), // onmer reg
                    const SizedBox(
                      height: 49,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26, right: 25),
                      child: Text(
                        "Promotion",
                        style:
                            GoogleFonts.lato(fontSize: 24, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26, right: 25),
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
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class person extends StatelessWidget {
  const person({super.key, required this.userName, required this.email});
  final String userName;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        height: 48,
        width: 222,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16)),
                child: const Icon(
                  Icons.person_outline_sharp,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: GoogleFonts.lato(fontSize: 12),
                  ),
                  Text(email, style: GoogleFonts.lato(fontSize: 10))
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.settings),
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
  final String nominal;
  final String nameCard;
  const VRcard({
    Key? key,
    required this.nominal,
    required this.nameCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: loginButtonColor,
      //color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: SizedBox(
        height: 171,
        width: 294,
        //child: Image.asset('web/assets/logo-arto.png'),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
                width: 50,
                child: Image.asset('web/assets/visa.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Rp.$nominal,-",
                style: GoogleFonts.lato(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: 100,
                color: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                nameCard,
                style: GoogleFonts.lato(color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
