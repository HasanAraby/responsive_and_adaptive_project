import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1310;
  static const double tablet = 800;

//just in mobile development you can use it;
  static late double width, height;

  static init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
