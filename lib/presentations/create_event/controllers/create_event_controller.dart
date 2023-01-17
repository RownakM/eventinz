import 'package:get/get.dart';

class CreateEventController extends GetxController {
  String? selectedState;
  String? selectedCity;
  String? catType;
  String? catSubType;
  String? noGuest;
  String? budget;
  String? buttonText = 'Continue';
  int currentStep = 0;
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
  var cityList = [
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
  var catList = [
    "Cate 1",
    "Cate 2",
    "Cate 3",
    "Cate 4",
    "Cate 5",
    "Cate 6",
  ];
  var subCatList = [
    "Sub Cate 1",
    "Sub Cate 2",
    "Sub Cate 3",
    "Sub Cate 4",
    "Sub Cate 5",
    "Sub Cate 6",
  ];
  var guestList = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
  ];
  var budgetList = [
    "500",
    "1000",
    "1500",
    "2000",
    "2500",
  ];
  @override
  void onInit() {
    super.onInit();
  }
}
