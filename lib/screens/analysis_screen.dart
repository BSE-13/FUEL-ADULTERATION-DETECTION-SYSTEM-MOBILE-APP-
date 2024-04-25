import 'package:flutter/material.dart';
import 'package:fuel_pro/widgets/k_border.dart';
import 'package:fuel_pro/widgets/k_header.dart';
import 'package:fuel_pro/widgets/k_readings.dart';
import 'package:fuel_pro/widgets/k_spacer.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

class AnalysisPage extends StatefulWidget {
  const AnalysisPage({super.key});

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        children: [
          kSpacer(20),
          kHeader(text1: 'Fuel', text2: 'Pro'),
          kSpacer(30),
          kBorder(),
          kSpacer(20),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Readings..',
              style: TextStyle(
                  fontSize: 32.0,
                  color: Color(0xFFF3C94E),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter'),
            ),
          ),
          kSpacer(30),
          const AnimatedRadialGauge(
              duration: Duration(seconds: 1),
              curve: Curves.elasticOut,
              radius: 100,
              value: 20,
              axis: GaugeAxis(
                  min: 0,
                  max: 100,
                  degrees: 180,
                  style: GaugeAxisStyle(
                    thickness: 20,
                    background: Color(0xFFDFE2EC),
                    segmentSpacing: 4,
                  ),
                  pointer: GaugePointer.needle(
                    borderRadius: 16,
                    color: Color(0xFF193663),
                    height: 60.0,
                    width: 8.0,
                  ),
                  progressBar: GaugeProgressBar.rounded(
                    color: Color(0xFFB4C2F8),
                  ),
                  segments: [
                    GaugeSegment(
                      from: 0,
                      to: 33.3,
                      color: Color(0xFFD9DEEB),
                      cornerRadius: Radius.zero,
                    ),
                    GaugeSegment(
                      from: 33.3,
                      to: 66.6,
                      color: Color(0xFFD9DEEB),
                      cornerRadius: Radius.zero,
                    ),
                    GaugeSegment(
                      from: 66.6,
                      to: 100,
                      color: Color(0xFFD9DEEB),
                      cornerRadius: Radius.zero,
                    ),
                  ])),
          kSpacer(40),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Latest reading',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Color(0xFF727272),
              ),
            ),
          ),
          kSpacer(20),
          kBorder(),
          kSpacer(20),
          kReading(text: 'Sulphur Readings'),
          kReading(text: 'color'),
          kReading(text: 'aniline point'),
          kSpacer(20),
          const Text(
            // this status comes from the database
            'Your fuel seems to be ok....',
            style: TextStyle(
                color: Color(0xff72BC7E),
                fontSize: 14.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
