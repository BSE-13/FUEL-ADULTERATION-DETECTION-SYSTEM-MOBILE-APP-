import 'package:flutter/material.dart';

Widget kReading({
  required String text,
  double vertical = 10,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: vertical),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16.0,
            color: Color(0xff646464),
          ),
        ),
        Container(
          width: 142.0,
          height: 32.0,
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: const Color(0xFFFFC821)),
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromRGBO(225, 200, 33, 0.06),
          ),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              //comes from the database
              '60%',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xffFFC821),
                  fontSize: 18.0),
            ),
          ),
        )
      ],
    ),
  );
}
