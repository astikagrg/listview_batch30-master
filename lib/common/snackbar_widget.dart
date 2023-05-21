import 'package:flutter/material.dart';

showSnackBar(BuildContext context, String msg, {Color color = Colors.green}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('$msg'),
      duration: const Duration(seconds: 1),
      behavior: SnackBarBehavior.floating,
      backgroundColor: color,
    ),
  );
}
