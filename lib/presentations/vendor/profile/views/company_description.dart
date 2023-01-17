import 'package:eventing/app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/widgets/input_textfield.dart';
import '../controllers/profile_controller.dart';

class CompanyDescription extends GetView<ProfileController> {
  const CompanyDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (controller) {
      return Container(
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 100.w,
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "Update Profile",
                      fontSize: 16,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: "Personal Details",
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        TextWidget(
                          text: "Company Description",
                          fontSize: 16,
                        ),
                        TextWidget(
                          text: "Others",
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    InputTextField(hint: "Company Name"),
                    SizedBox(
                      height: 3.h,
                    ),
                    InputTextField(hint: "Company Address"),
                    SizedBox(
                      height: 3.h,
                    ),
                    InputTextField(hint: "Company URl"),
                    SizedBox(
                      height: 3.h,
                    ),
                    InputTextField(hint: "Company Description"),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            child: DropdownButton(
                              hint: TextWidget(
                                text: "  -- Select Country --",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              underline: Container(),
                              isExpanded: true,
                              value: controller.selectedState,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: controller.stateList.map((items) {
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
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            child: DropdownButton(
                              hint: TextWidget(
                                text: "  -- Select State --",
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
                              items: controller.citiesList.map((items) {
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
                    Row(
                      children: [
                        Flexible(child: InputTextField(hint: "Minimum Budget")),
                        SizedBox(
                          width: 3.w,
                        ),
                        Flexible(child: InputTextField(hint: "Maximum Budget")),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      );
    });
  }
}
