import 'package:flutter/material.dart';

showMySnackBar({
  required String message,
  required BuildContext context,
  Color? color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.green,
      content: Text(message),
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
