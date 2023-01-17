import 'package:country_phone_code_picker/core/country_phone_code_picker_widget.dart';
import 'package:country_phone_code_picker/models/country.dart';
import 'package:eventing/presentations/auth/controllers/auth_controller.dart';
import 'package:eventing/presentations/auth/views/login_view.dart';
import 'package:eventing/presentations/auth/views/signup_email_view.dart';
import 'package:flutter/material.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../app/config/app_colors.dart';
import '../../../app/widgets/input_textfield.dart';

class SignupView extends GetView<AuthController> {
  String initialCountry = 'US';
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
  String? dropdownvalue;

  // List of items in our dropdown menu
  var items = [
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
  String? dropdownvalue2;

  // List of items in our dropdown menu
  var items2 = [
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

  String selectedState = 'Alabama';
  String selectedCity = '---Select City---';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.kWhite,
            body: Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Utils.getImagePath("splash_bg")))),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 6.h,
                        ),
                        Center(
                            child: Column(
                          children: [
                            TextWidget(
                              text: "Signup",
                              fontWeight: FontWeight.w700,
                              fontSize: 25.sp,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            TextWidget(
                              textAlign: TextAlign.center,
                              text:
                                  "Get access to all our planning tools and event plannig details",
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            TextWidget(
                              textAlign: TextAlign.center,
                              text: "Personal Information",
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ],
                        )),
                        SizedBox(
                          height: 8.h,
                        ),
                        InputTextField(
                          hint: 'First Name',
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        InputTextField(
                          hint: 'Last Name',
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        IntlPhoneField(
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                          initialCountryCode: 'US',
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 1, color: Colors.grey)),
                                child: DropdownButton(
                                  hint: TextWidget(
                                    text: "  -- Select State --",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  underline: Container(),
                                  isExpanded: true,
                                  value: controller.selectedState,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: items.map((items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: Text(items),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (v) {
                                    controller.selectedState = v.toString();
                                    controller.update();
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 1, color: Colors.grey)),
                                child: DropdownButton(
                                  hint: TextWidget(
                                    text: "  -- Select City --",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  underline: Container(),
                                  isExpanded: true,
                                  value: controller.selectedCity,
                                  onChanged: (v) {
                                    controller.selectedCity = v.toString();
                                    controller.update();
                                  },
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  items: items2.map((items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: Text(items),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        CountryPhoneCodePicker.withDefaultSelectedCountry(
                          defaultCountryCode: Country(
                              name: 'United State',
                              countryCode: 'US',
                              phoneCode: '+1'),
                          borderRadius: 5,
                          height: 9.h,
                          width: 100.w,
                          //backgroundColor: Colors.grey,
                          showName: true,
                          showFlag: false,
                          borderWidth: 1,
                          borderColor: Colors.grey,
                          style: const TextStyle(fontSize: 16),
                          searchBarHintText: 'Search by name',
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                activeColor: AppColors.kPrimary,
                                value: controller.acceptTerm,
                                onChanged: (value) {
                                  controller.acceptTerm = value!;
                                  controller.update();
                                }),
                            TextWidget(
                              text: "I accept terms of use & Privacy Policy",
                              fontSize: 12,
                              // fontSize: 25.sp,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        SizedBox(
                          width: 100.w,
                          height: 7.h,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            color: AppColors.kPrimary,
                            onPressed: () {
                              Get.to(() => SignupEmailView());
                            },
                            child: TextWidget(
                              text: "Continue",
                              color: AppColors.kWhite,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        TextWidget(
                          text: "Or",
                          color: AppColors.kBlack,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        SizedBox(
                          width: 100.w,
                          height: 7.h,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            color: AppColors.deepBlue,
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Utils.getIconPath("facebook"),
                                  scale: 4,
                                ),
                                TextWidget(
                                  text: "   Sign up with Facebook",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: AppColors.kWhite,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              text: "Already have an account?",
                              fontSize: 12,
                            ),
                            TextButton(
                                onPressed: () {
                                  Get.to(() => LoginView());
                                },
                                child: Text("Sign in here")),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
