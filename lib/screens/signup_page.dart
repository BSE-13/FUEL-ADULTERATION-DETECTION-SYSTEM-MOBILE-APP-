import 'package:flutter/material.dart';
import 'package:fuel_pro/screens/home_screen.dart';
import 'package:fuel_pro/widgets/k_elevated_button.dart';
import 'package:fuel_pro/widgets/k_spacer.dart';
import 'package:fuel_pro/widgets/k_textform_field.dart';
import 'package:fuel_pro/widgets/k_title.dart';
import 'package:fuel_pro/screens/login_screen.dart';

class Signup_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        children: [
          kSpacer(100),
          KTitle(
            text: 'Signup',
            fontSize: 48.0,
          ),
          kSpacer(20),
          kTextField(hint: 'Username', icon: Icons.person),
          kTextField(hint: 'Phone', icon: Icons.phone),
          kTextField(hint: 'Password', icon: Icons.lock),
          kSpacer(40),
          KElevatedButton(
              buttonText: 'Signup',
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Dashboard()));
              }),
          kSpacer(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
              ),
              TextButton(
                  onPressed: () {
                    //just navigates to the SignupPage
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dashboard()));
                  },
                  child: Text(
                    'login',
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 16.0,
                        fontFamily: 'Poppins'),
                  ))
            ],
          ),
          kSpacer(10, isVertical: false),
          const Align(
            alignment: Alignment.center,
            child: Text("OR",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
          kSpacer(20),
          KElevatedButton(
            buttonText: 'Login with Google',
            leading: Image.asset(
              'images/google.jpg',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
            onPressed: () {},
            backgroundColor: Colors.white,
          ),
          kSpacer(20),
          KElevatedButton(
            buttonText: 'Login with facebook',
            textColor: Colors.white,
            leading: Image.asset(
              'images/facebook.png',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
            onPressed: () {},
            backgroundColor: const Color(0xFF00366A),
          ),
        ],
      ),
    );
  }
}
