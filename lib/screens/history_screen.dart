import 'package:flutter/material.dart';
import 'package:fuel_pro/screens/profile_screen.dart';
import 'package:fuel_pro/widgets/k_header.dart';
import 'package:fuel_pro/widgets/k_history.dart';
import 'package:fuel_pro/widgets/k_spacer.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        children: [
          kSpacer(20),
          kHeader(text1: 'History'),
          kSpacer(20),
          kHistory(dateTime: '14/03/2024', shellName: 'Shell Mengo'),
          kSpacer(20.0),
          kHistory(dateTime: '13/03/2024', shellName: 'Total Mulago'),
          kSpacer(20.0),
          kHistory(dateTime: '12/03/2042', shellName: 'Rubis Kamyokya'),
        ],
      ),
    );
  }
}
