import 'package:flutter/cupertino.dart';

class AppStyles {
  static TextStyle styleMedium14(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: const Color(0xFF4048FD),
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
      color: const Color(0xFF000000),
    );
  }

  static TextStyle styleBold12(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
      color: const Color(0xFF000000),
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
      color: const Color(0xFFFF4D4F),
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
      color: const Color(0xFF898989),
    );
  }

  static TextStyle styleBold15(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
      color: const Color(0xFF000000),
    );
  }

  static TextStyle styleMedium12(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle styleSemiBold40(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 40),
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: const Color(0xFF000000),
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: const Color(0xFF000000),
    );
  }

  static TextStyle styleBold18(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
      color: const Color(0xFF000000),
    );
  }

  static TextStyle styleBold20(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
      color: const Color(0xFF000000),
    );
  }

  static TextStyle styleRegular16(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
      color: const Color(0xFF000000),
    );
  }

  static TextStyle styleSemiBold12(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: const Color(0xFFB3B1B0),
    );
  }

  static TextStyle styleSemiBold14(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: const Color(0xFF000000),
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: const Color(0xFF4048FD),
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: const Color(0xFF000000),
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: const Color(0xFF000000),
    );
  }
}

double responsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context, fontSize);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context, fontSize) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
