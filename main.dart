import 'package:flutter/material.dart';
import 'package:fuel_pro/welcomepage.dart';
import 'loginscreen.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcomepage(),
    );
  }
}

