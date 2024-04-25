import 'package:flutter/cupertino.dart';
import 'package:fuel_pro/widgets/k_border.dart';
import 'package:fuel_pro/widgets/k_readings.dart';
import 'package:fuel_pro/widgets/k_spacer.dart';

Widget kHistory({
  required String dateTime,
  required String shellName,
}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            dateTime,
            style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Color(0xFF727272)),
          ),
          Text(
            shellName,
            style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Color(0xFF727272)),
          ),
        ],
      ),
      kSpacer(20),
      kBorder(),
      kSpacer(20),
      kReading(text: 'Sulphur'),
      kReading(text: 'color'),
      kReading(text: 'aniline point'),
    ],
  );
}
