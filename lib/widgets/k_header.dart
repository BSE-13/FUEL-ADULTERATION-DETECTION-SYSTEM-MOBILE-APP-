import 'package:flutter/material.dart';

Widget kHeader({
  required String text1,
  String? text2,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      RichText(
          text: TextSpan(
              text: text1,
              style: TextStyle(
                  color: Color(0xFFFFC821),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Poppins'),
              children: [
            TextSpan(
              text: text2,
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Inter'),
            )
          ])),
      const Icon(
        Icons.pending_rounded,
        color: Color(0xFFFFC821),
        size: 45,
      ),
    ],
  );
}
