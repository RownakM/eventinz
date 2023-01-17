import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/company_description.dart';
import '../views/other_view.dart';
import '../views/profile_details.dart';

class ProfileController extends GetxController {
  var currentIndex = 0;
  bool profileCheck = false;
  final pages = [
    ProfileDetails(),
    CompanyDescription(),
    OtherView(),
  ];
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

  nextBtn() {
    if (currentIndex != 2) {
      currentIndex++;
      update();
    }
  }

  backBtn() {
    if (currentIndex != 0) {
      currentIndex--;
      update();
    }
  }
}
