import 'package:flutter/material.dart';
import 'package:ta_smt4/view/screens/login/login.dart';

class LoginFailedDialog extends StatelessWidget {
  final String errorMessage;

  const LoginFailedDialog({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Gagal Login'),
      content: Text(errorMessage),
      actions: [
        TextButton(
          child: const Text('Tutup'),
          onPressed: () {
           Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
          },
        ),
      ],
    );
  }
}
