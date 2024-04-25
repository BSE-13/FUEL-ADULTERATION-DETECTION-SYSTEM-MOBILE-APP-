import 'package:flutter/material.dart';

Widget kTextField({
  String? hint,
  IconData? icon,
  Color? color = const Color(0xFFFFC821),
  double vertical = 10,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: vertical),
    child: TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: const Color.fromRGBO(0, 0, 0, 0.06),
        prefixIcon: Icon(
          icon,
          color: color,
        ),
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
      ),
    ),
  );
}

// Icons.lock
// Color(0xFFFFC821)
