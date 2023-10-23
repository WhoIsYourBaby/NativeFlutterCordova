import 'package:flutter/material.dart';

Widget buildPrimaryButton(
    BuildContext context, String text, VoidCallback onPressed) {
  final ssize = MediaQuery.of(context).size;
  return MaterialButton(
    onPressed: onPressed,
    minWidth: ssize.width * 0.8,
    height: 44,
    child: Text(
      text,
    ),
  );
}
