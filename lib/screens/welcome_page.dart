import 'package:flutter/material.dart';
import 'package:fuel_pro/screens/login_screen.dart';
import 'package:fuel_pro/widgets/k_elevated_button.dart';
import 'package:fuel_pro/widgets/k_spacer.dart';

class WelcomePage extends StatelessWidget {
  final double? width;
  final double? height;
  const WelcomePage({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFC821),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 40),
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 32.0, top: 50),
            child: Text(
              'FuelPro',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 72,
                color: Colors.white,
              ),
            ),
          ),
          Image.asset(
            'images/fuelpamp.png',
            height: 369,
            width: 444,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32.0, top: 0.0),
            child: Text(
              'Fast &',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                fontSize: 32,
                letterSpacing: 4,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Text(
              'Reliable',
              style: TextStyle(
                color: Colors.black12,
                fontFamily: 'Inter',
                letterSpacing: 4,
                fontSize: 32,
              ),
            ),
          ),
          kSpacer(10),
          const Padding(
            padding: EdgeInsets.only(
              left: 32.0,
            ),
            child: Text(
              'Analyze Your Fuel, Always',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                fontSize: 16,
              ),
            ),
          ),
          kSpacer(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.black),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get Started',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[900]),
                      ),
                      const Icon(
                        Icons.chevron_right,
                        color: Color(0xFF000000),
                      )
                    ],
                  ),
                )),
          ),
          kSpacer(20),
          const Align(
            alignment: Alignment.center,
            child: Text('Terms and conditions  2023-2024',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  wordSpacing: 3,
                )),
          ),
        ],
      ),
    );
  }
}
