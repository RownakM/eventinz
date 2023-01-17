import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  bool acceptTerm = false;
  bool remember = false;
  var stateList = [
    "Alabama",
    "Alaska",
    "Arizona",
    "Arkansas",
    "California",
    "Colorado",
    "Connecticut",
    "Hawaii",
    "Illinois",
  ];
  var citiesList = [
    "Alabama",
    "Alaska",
    "Arizona",
    "Arkansas",
    "California",
    "Colorado",
    "Connecticut",
    "Hawaii",
    "Illinois",
  ];

  String? selectedState;
  String? selectedCity;
  @override
  void onInit() {
    super.onInit();
  }

  onStateChanged(v) {
    selectedState = v;
    update();
  }

  onCityChanged(v) {
    selectedCity = v;
    update();
  }
}
