import 'package:flutter/material.dart';

Future<void> showCircleLoadingDialog({required BuildContext context}) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.white,
    builder: (context) {
      return Center(
        child: Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: const CircularProgressIndicator(
            color: Colors.blueAccent,
            strokeWidth: 5,
          ),
        ),
      );
    },
  );
}

