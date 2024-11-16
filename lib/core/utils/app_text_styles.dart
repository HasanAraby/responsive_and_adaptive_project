// abstract because we don't have to get an object
import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_project/core/utils/size_config.dart';

abstract class AppTextStyles {
  static TextStyle styleRegular16(BuildContext context) {
    return const TextStyle(
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: Color(0xFF064060),
    );
  }

  static TextStyle styleMedium16(context) {
    return const TextStyle(
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      color: Color(0xFF064061),
    );
  }

  static TextStyle styleSemiBold16(context) {
    return const TextStyle(
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: Color(0xFF064061),
    );
  }

  static TextStyle styleSemiBold20(context) {
    return const TextStyle(
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: Color(0xFF064061),
    );
  }

  static TextStyle styleRegular12(context) {
    return const TextStyle(
      fontSize: 12,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: Color(0xFFAAAAAA),
    );
  }

  static TextStyle styleSemiBold24(context) {
    return const TextStyle(
      fontSize: 24,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: Color(0xFF4EB7F2),
    );
  }

  static TextStyle styleRegular14(context) {
    return const TextStyle(
      fontSize: 14,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: Color(0xFFAAAAAA),
    );
  }

  static TextStyle styleSemiBold18(context) {
    return const TextStyle(
      fontSize: 18,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: Color(0xFFFFFFFF),
    );
  }

  static TextStyle styleBold16(context) {
    return const TextStyle(
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      color: Color(0xFF4EB7F2),
    );
  }

  static TextStyle styleMedium20(context) {
    return const TextStyle(
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      color: Color(0xFFFFFFFF),
    );
  }
}

double getResponsiveFontSize(
    {required BuildContext context, required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  // clamp makes it [lowerLimit, upperLimit]
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  // all of these numbers can be changed
  // tablet then desktop and width / {also change} (guess work all of them)
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
