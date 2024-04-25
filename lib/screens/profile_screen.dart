import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:fuel_pro/screens/analysis_screen.dart';
import 'package:fuel_pro/screens/history_screen.dart';
import 'package:fuel_pro/widgets/k_Persona.dart';
import 'package:fuel_pro/widgets/k_elevated_button.dart';
import 'package:fuel_pro/widgets/k_header.dart';
import 'package:fuel_pro/widgets/k_spacer.dart';
import 'package:fuel_pro/widgets/k_title.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        children: [
          kSpacer(20),
          kHeader(text1: 'Profile'),
          kSpacer(50.0),
          Row(
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/image.jpg'),
              ),
              KTitle(
                text: 'Hello, Sheila',
                fontSize: 32.0,
              ),
            ],
          ),
          kSpacer(20.0),
          const Text(
            'Personal Details',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: Color(0xFF515151)),
          ),
          kSpacer(10.0),
          kPersona(
              icon: Icons.account_box, label: 'Username', name: 'Sheilah.W'),
          kSpacer(20),
          kPersona(
              icon: Icons.home_work_outlined,
              label: 'Address',
              name: 'Kampala'),
          kSpacer(20.0),
          kPersona(icon: Icons.phone, label: 'Phone', name: '+256703192453'),
          kSpacer(20.0),
          kPersona(
              icon: Icons.email,
              label: 'E-mail',
              name: 'madrinemulindwa@gmail.com'),
          kSpacer(20.0),
          KElevatedButton(
            buttonText: 'Edit',
            onPressed: () {},
            textColor: Colors.white,
            backgroundColor: Colors.black,
          )
        ],
      ),
    );
  }
}
