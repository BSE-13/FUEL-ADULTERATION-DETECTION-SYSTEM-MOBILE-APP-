import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:fuel_pro/screens/analysis_screen.dart';
import 'package:fuel_pro/screens/history_screen.dart';
import 'package:fuel_pro/screens/profile_screen.dart';
import 'package:fuel_pro/widgets/k_card.dart';
import 'package:fuel_pro/widgets/k_header.dart';
import 'package:fuel_pro/widgets/k_spacer.dart';
import 'package:fuel_pro/widgets/k_title.dart';
import 'stationDetails_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            children: [
              kSpacer(20),
              kHeader(text1: 'Fuel', text2: 'Pro'),
              kSpacer(30),
              KTitle(
                text: 'Hello, Sheila',
                fontSize: 32.0,
              ),
              kSpacer(20),
              Row(children: [
                KCard(
                  titleText: 'Fuel Check',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Station_Details()));
                  },
                  svgImage: SvgPicture.asset(
                    'assets/fuel_pump.svg',
                    height: 60.0,
                    width: 60.0,
                  ),
                ),
                KCard(
                    titleText: 'Analysis',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnalysisPage()));
                    },
                    svgImage: SvgPicture.asset(
                      'assets/backup.svg',
                      height: 60,
                      width: 60,
                    )),
              ]),
              Row(
                children: [
                  KCard(
                      titleText: 'History',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const History()));
                      },
                      svgImage: SvgPicture.asset(
                        'assets/time.svg',
                        height: 60,
                        width: 60,
                      )),
                  const Spacer(),
                ],
              ),
              kSpacer(40),
              const Text(
                'Learn more about FuelPro',
                style: TextStyle(
                    color: Color(0xFF575757),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Inter'),
              ),
              kSpacer(20),
              Container(
                width: 380.0,
                height: 122.0,
                decoration: const BoxDecoration(
                    color: Color(0xff484848),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.zero)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/logo.svg',
                      height: 50.0,
                      width: 50.0,
                    ),
                    kSpacer(10),
                    const Text(
                        'FuelPro helps you detect the \n level of adulteration in\n your fuel.',
                        softWrap: true,
                        style: TextStyle(
                          color: Color(0xffcccccc),
                          fontSize: 18.0,
                          fontFamily: 'Poppins',
                        )),
                  ],
                ),
              ),
              kSpacer(25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.home, color: Color(0xFFFFC821)),
                  Icon(Icons.history, color: Color(0xFFFFC821)),
                  Icon(
                    Icons.person,
                    color: Color(0xFFFFC821),
                  ),
                ],
              )
            ]));
  }
}
