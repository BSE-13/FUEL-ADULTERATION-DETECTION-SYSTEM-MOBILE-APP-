import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuel_pro/widgets/k_spacer.dart';

Widget kPersona({required icon, required String label, required String name}) {
  return Row(
    children: [
      Icon(
        icon,
        size: 35.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
                fontSize: 14.0,
                color: Color(0xFFA8A8A8),
                fontFamily: 'Poppins'),
          ),
          kSpacer(5.0),
          Text(
            name,
            style: const TextStyle(fontSize: 20.0, fontFamily: 'Poppins'),
          ),
        ],
      )
    ],
  );
}
