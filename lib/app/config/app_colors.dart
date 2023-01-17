import 'package:flutter/material.dart';

class AppColors {
  static const Color kPrimary = Color(0xff9F007E);

  static const Color kSecondary = Color(0xffFF5A3F);
  static const Color kWhite = Color(0xffffffff);
  static const Color kBlack = Color(0xff000000);
  static const Color deepBlue = Color(0xff3E67C3);
  static const Color bgColor = Color(0xffF5F5F5);
  static const Color green = Color(0xff50A10B);
  static const Color grey = Color(0xffEBEBEB);
  static const Color lightYellow = Color(0xffFdf2f0);
  static const Color widghtYellow = Color(0xffFae0bd);
  static const Color lightSky = Color(0xffd6eae9);
  static const Color lightPink = Color.fromRGBO(159, 0, 126, 0.38);
}

class Utils {
  static getImagePath(String img) {
    return "assets/images/$img.png";
  }

  static getIconPath(String img) {
    return "assets/icons/$img.png";
  }
}
