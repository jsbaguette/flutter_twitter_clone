import 'package:flutter/material.dart';

const smallSize = 499;
const mediumSize = 1017;
const largeSize = 1295;

String whichSize(MediaQueryData constraints) {
  if (constraints.size.width > mediumSize) {
    return "largeSize";
  } else if (constraints.size.width > smallSize) {
    return "mediumSize";
  } else {
    return "smallSize";
  }
}
