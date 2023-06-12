import 'package:flutter/material.dart';
import 'package:ta_smt4/view/screens/dashboard/dashboard.dart';
import 'package:ta_smt4/view/screens/login/bloc/login_bloc.dart';
import 'package:ta_smt4/view/screens/login/widgets/login_bloc_implementor.dart';
import 'package:ta_smt4/view/screens/login/widgets/login_failed_dialog.dart';
import 'package:ta_smt4/view/screens/widgets/dialogs.dart';

class LoginListener extends StatelessWidget {
  final Widget child;
  const LoginListener({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Strings strings = Strings.of(context)!;
    return LoginBlocListener(
      child: child,
      listener: (context, bloc, state) {
        if (state is LoginLoadingState) {
          showCircleLoadingDialog(context: context);
        } else if (state is LoginFailedState) {
          showDialog(
            context: context,
            builder: (context) => const LoginFailedDialog(
              errorMessage: 'Username atau password salah.',
            ),
          );
        } else if (state is LoginSuccessState) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Dashboard(),
            ),
          );
        }
      },
    );
  }
}
