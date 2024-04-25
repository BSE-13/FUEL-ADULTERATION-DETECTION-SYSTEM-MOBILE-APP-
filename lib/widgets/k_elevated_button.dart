import 'package:flutter/material.dart';
import 'package:fuel_pro/widgets/k_spacer.dart';

class KElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final Color textColor;
  final String buttonText;
  final Color backgroundColor;
  final Widget? leading;

  const KElevatedButton({
    super.key,
    this.onPressed,
    this.height,
    this.width,
    required this.buttonText,
    this.leading,
    this.textColor = Colors.black,
    this.backgroundColor = const Color(0xfffbc64d),
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            minimumSize: MaterialStateProperty.all<Size>(
                Size(width ?? size.width * 0.75, height ?? 50))),
        // child: Text(
        //   buttonText,
        //   style: const TextStyle(fontSize: 20.0),
        // ),
        child: leading == null
            ? Text(buttonText,
                style: TextStyle(
                  fontSize: 14,
                  color: textColor,
                ))
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  leading ?? const SizedBox(),
                  kSpacer(10, isVertical: false),
                  Text('login with Google',
                      style: TextStyle(
                        fontSize: 14,
                        color: textColor,
                      )),
                ],
              ),
      ),
    );
  }
}
