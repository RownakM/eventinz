import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/widgets/input_textfield.dart';
import '../controllers/profile_controller.dart';

class OtherView extends GetView<ProfileController> {
  const OtherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) {
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
                            color: Colors.grey,
                          ),
                          TextWidget(
                            text: "Others",
                            fontSize: 16,
                          ),
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
                        text: "Social Media Profiles",
                        fontSize: 16,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Flexible(child: InputTextField(hint: "Facebook")),
                          SizedBox(
                            width: 3.w,
                          ),
                          Flexible(child: InputTextField(hint: "Twitter")),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Flexible(child: InputTextField(hint: "Linked In")),
                          SizedBox(
                            width: 3.w,
                          ),
                          Flexible(child: InputTextField(hint: "Instagram")),
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
                        text: "Vendors Sub Categories",
                        fontSize: 16,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  side: BorderSide(color: AppColors.kPrimary),
                                  activeColor: AppColors.kPrimary,
                                  value: true,
                                  onChanged: (value) {}),
                              TextWidget(
                                text: "Antique", fontSize: 12,
                                // fontSize: 25.sp,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: AppColors.kPrimary,
                                  value: false,
                                  onChanged: (value) {}),
                              TextWidget(
                                text: "Bead", fontSize: 12,
                                // fontSize: 25.sp,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  side: BorderSide(color: AppColors.kPrimary),
                                  activeColor: AppColors.kPrimary,
                                  value: true,
                                  onChanged: (value) {}),
                              TextWidget(
                                text: "Bridal", fontSize: 12,
                                // fontSize: 25.sp,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  side: BorderSide(color: AppColors.kPrimary),
                                  activeColor: AppColors.kPrimary,
                                  value: false,
                                  onChanged: (value) {}),
                              TextWidget(
                                text: "Fashion", fontSize: 12,
                                // fontSize: 25.sp,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              side: BorderSide(color: AppColors.kPrimary),
                              activeColor: AppColors.kPrimary,
                              value: false,
                              onChanged: (value) {}),
                          TextWidget(
                            text: "Special Event", fontSize: 12,
                            // fontSize: 25.sp,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
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
                        text: "Features",
                        fontSize: 16,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  side: BorderSide(color: AppColors.kPrimary),
                                  activeColor: AppColors.kPrimary,
                                  value: true,
                                  onChanged: (value) {}),
                              TextWidget(
                                text: "Rings ", fontSize: 12,
                                // fontSize: 25.sp,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: AppColors.kPrimary,
                                  value: false,
                                  onChanged: (value) {}),
                              TextWidget(
                                text: "Earings", fontSize: 12,
                                // fontSize: 25.sp,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  side: BorderSide(color: AppColors.kPrimary),
                                  activeColor: AppColors.kPrimary,
                                  value: true,
                                  onChanged: (value) {}),
                              TextWidget(
                                text: "Necklace", fontSize: 12,
                                // fontSize: 25.sp,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  side: BorderSide(color: AppColors.kPrimary),
                                  activeColor: AppColors.kPrimary,
                                  value: false,
                                  onChanged: (value) {}),
                              TextWidget(
                                text: "Pendant", fontSize: 12,
                                // fontSize: 25.sp,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: AppColors.kPrimary,
                                  value: false,
                                  onChanged: (value) {}),
                              TextWidget(
                                text: "Bracelets", fontSize: 12,
                                // fontSize: 25.sp,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  side: BorderSide(color: AppColors.kPrimary),
                                  activeColor: AppColors.kPrimary,
                                  value: true,
                                  onChanged: (value) {}),
                              TextWidget(
                                text: "Watches ", fontSize: 12,
                                // fontSize: 25.sp,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  side: BorderSide(color: AppColors.kPrimary),
                                  activeColor: AppColors.kPrimary,
                                  value: false,
                                  onChanged: (value) {}),
                              TextWidget(
                                text: "Wedding & Engagement", fontSize: 12,
                                // fontSize: 25.sp,
                              )
                            ],
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
      },
    );
  }
}
