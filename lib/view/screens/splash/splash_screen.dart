import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_smt4/common/injection/injection.dart';
import 'package:ta_smt4/view/screens/dashboard/dashboard.dart';
import 'package:ta_smt4/view/screens/login/login.dart';
import 'package:ta_smt4/view/screens/splash/cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SplashCubit>(),
      child: const _SplashScreen(),
    );
  }
}

class _SplashScreen extends StatefulWidget {
  const _SplashScreen({Key? key}) : super(key: key);

  @override
  State<_SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<_SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SplashCubit>().checkTokenAvailability();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is SplashSuccessRetrievingToken) {
          Future.delayed(const Duration(seconds: 2), () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Dashboard(),
              ),
            );
          });
        } else if (state is SplashFailedRetrievingToken) {
          Future.delayed(const Duration(seconds: 2), () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          });
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Center(
              child: Image.asset(
                'web/assets/logo-arto.png',
                height: 200,
                width: 250,
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                  color: Colors.blueAccent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
