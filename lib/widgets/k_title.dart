import 'package:flutter/material.dart';

class KTitle extends StatelessWidget {
  final String text;
  double? fontSize = 48.0;
  KTitle({super.key, required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFC821),
      ),
    );
  }
}
