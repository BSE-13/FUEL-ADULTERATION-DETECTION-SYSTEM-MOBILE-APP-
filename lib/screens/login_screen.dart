import 'package:flutter/material.dart';
import 'package:fuel_pro/screens/signup_page.dart';
import 'package:fuel_pro/widgets/k_elevated_button.dart';
import 'package:fuel_pro/widgets/k_spacer.dart';
import 'package:fuel_pro/widgets/k_textform_field.dart';
import 'package:fuel_pro/widgets/k_title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        children: [
          kSpacer(100),
          KTitle(text: 'Login', fontSize: 48.0),
          kSpacer(20),
          Text(
            'Get Started With Monitoring Your Fuel',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          kSpacer(10),
          kTextField(hint: 'username', icon: Icons.person),
          kTextField(hint: 'password', icon: Icons.lock),
          kSpacer(20),
          KElevatedButton(
            buttonText: 'Login',
            onPressed: () {},
            textColor: Colors.white,
          ),
          kSpacer(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
              ),
              TextButton(
                  onPressed: () {
                    //just navigates to the SignupPage
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup_page()));
                  },
                  child: Text(
                    'Signup',
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
            buttonText: 'Login with Facebook',
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
