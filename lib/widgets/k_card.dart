import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fuel_pro/widgets/k_spacer.dart';

class KCard extends StatelessWidget {
  final void Function()? onPressed;
  final String titleText;
  final Widget svgImage;
  const KCard({
    super.key,
    required this.titleText,
    required this.svgImage,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: Container(
          width: 178.0,
          height: 170.0,
          color: const Color(0xFFF1F1F1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                titleText,
                style: const TextStyle(
                    color: Color(0xFF565656),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Inter'),
              ),
              kSpacer(20),
              svgImage
            ],
          ),
        ),
      ),
    );
  }
}
