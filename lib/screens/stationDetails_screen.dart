import 'package:flutter/material.dart';
import 'package:fuel_pro/widgets/k_elevated_button.dart';
import 'package:fuel_pro/widgets/k_header.dart';
import 'package:fuel_pro/widgets/k_spacer.dart';
import 'package:fuel_pro/widgets/k_textform_field.dart';
import 'package:fuel_pro/widgets/k_title.dart';

class Station_Details extends StatelessWidget {
  const Station_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        children: [
          kSpacer(20),
          kHeader(text1: 'Fuel', text2: 'Pro'),
          kSpacer(30),
          KTitle(
            text: 'Petrol Station Details',
            fontSize: 32,
          ),
          kSpacer(50),
          Text(
            'Input the Petrol Station Details',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.0,
                color: Color(0xFF666666),
                fontWeight: FontWeight.bold),
          ),
          kSpacer(20),
          Text(
            'Name of fuel station',
            style: TextStyle(
                fontSize: 14.0, fontFamily: 'Inter', color: Color(0xff737373)),
          ),
          kSpacer(10),
          kTextField(),
          Text(
            'Location',
            style: TextStyle(
                color: Color(0xff737373), fontFamily: 'Inter', fontSize: 14.0),
          ),
          kSpacer(10),
          kTextField(),
          kSpacer(20),
          KElevatedButton(
            buttonText: 'Confirm',
            onPressed: () {},
            textColor: Colors.white,
            backgroundColor: Colors.black,
          )
        ],
      ),
    );
  }
}
