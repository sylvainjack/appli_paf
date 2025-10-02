import 'package:flutter/material.dart';

Widget simpleButton(String title, VoidCallback? onTap) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      onPressed: onTap,

      // Ajouter navigation
      child: Text(title),
    ),
  );
}
