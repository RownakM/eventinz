import 'package:eventing/app/widgets/input_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../controllers/profile_controller.dart';

class ProfileDetails extends GetView<ProfileController> {
  const ProfileDetails({Key? key}) : super(key: key);

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
                        ),
                        TextWidget(
                          text: "Company Description",
                          fontSize: 16,
                          color: Colors.grey,
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
                    InputTextField(hint: "First Name"),
                    SizedBox(
                      height: 3.h,
                    ),
                    InputTextField(hint: "Last Name"),
                    SizedBox(
                      height: 3.h,
                    ),
                    InputTextField(hint: "Email"),
                    SizedBox(
                      height: 3.h,
                    ),
                    InputTextField(hint: "Phone Number"),
                    SizedBox(
                      height: 3.h,
                    ),
                    InputTextField(hint: "Alternate Phone Number"),
                    SizedBox(
                      height: 3.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
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
                      text: "Upload Profile",
                      fontSize: 16,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: AppColors.kPrimary,
                            value: controller.profileCheck,
                            onChanged: (value) {
                              controller.profileCheck = value!;
                              controller.update();
                            }),
                        TextWidget(
                          text: "Upload Profile Photo ?", fontSize: 12,
                          // fontSize: 25.sp,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 30.5.w,
                          height: 3.5.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey),
                          child: Center(
                            child: TextWidget(
                              text: "Choose File",
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        TextWidget(
                          text: "*No File Chosen*",
                          fontSize: 13,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
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
