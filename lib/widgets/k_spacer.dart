import 'package:flutter/material.dart';

kSpacer(double value, {bool? isVertical = true}) {
  if (isVertical == true) {
    return SizedBox(
      height: value,
    );
  } else {
    return SizedBox(
      width: value,
    );
  }
}
