import 'package:eventing/presentations/vendor/profile/views/edit_profile.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/widgets/app_bar_widget.dart';
import '../../../../app/widgets/input_textfield.dart';
import '../../../../app/widgets/widgits.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.bgColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(200.0),
              child: VendorAppBarWidget(
                onTap: () {},
              ),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 26.h,
                    width: 100.w,
                    color: AppColors.kWhite,
                    child: Stack(
                      children: [
                        Container(
                          height: 16.h,
                          width: 100.w,
                          color: AppColors.kPrimary,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextWidget(
                                  text: "Lorem P",
                                  color: AppColors.kWhite,
                                  fontSize: 16,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(() => EditProfileView());
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                        borderRadius: BorderRadius.circular(2)),
                                    child: TextWidget(
                                      text: "Edit Profile",
                                      color: AppColors.kWhite,
                                      fontSize: 8,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8.h,
                          child: Container(
                            height: 6.33.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: AppColors.kWhite,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.8),
                                    blurRadius: 8)
                              ],
                              borderRadius: BorderRadius.circular(
                                5,
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextWidget(
                                    text: "No Ratings - 0",
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  TextWidget(
                                    text: "Jewelry",
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 16.41.h,
                            width: 19.48.w,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: AppColors.kWhite,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.8),
                                    blurRadius: 8)
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image.asset(
                              Utils.getImagePath("logo_img"),
                              //s  height: 15.41.h,
                              // width: 18.48.w,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    width: 100.w,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: "User Details",
                          fontSize: 16,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                profileRowNaming(
                                    text1: "First Name", text2: "ABCD"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                profileRowNaming(
                                    text1: "Emaill Address",
                                    text2: "abc@gmail.com"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                profileRowNaming(
                                    text1: "Phone", text2: "91320******"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                profileRowNaming(
                                    text1: "Location", text2: "ABCD"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                profileRowNaming(
                                    text1: "Company Address", text2: "ABCD"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                profileRowNaming(
                                    text1: "Company Description",
                                    text2: "ABCD"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                TextWidget(
                                  text: "Social",
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      Utils.getIconPath("twitter"),
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Image.asset(
                                      Utils.getIconPath("insta"),
                                      scale: 4,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Image.asset(
                                      Utils.getIconPath("fb"),
                                      scale: 4,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                profileRowNaming(
                                    text1: "PayPal Account Name",
                                    text2: "ABCD"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                profileRowNaming(
                                    text1: "Momo Number", text2: "12312"),
                                SizedBox(
                                  height: 5.h,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                profileRowNaming(
                                    text1: "Last Name", text2: "ABCD"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                profileRowNaming(
                                    text1: "Alternate Phone",
                                    text2: "91320***"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                profileRowNaming(
                                    text1: "Company URL", text2: "ABCD"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                profileRowNaming(
                                    text1: "Minimum Budget", text2: "123"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                profileRowNaming(
                                    text1: "Maximum Budget", text2: "123"),
                                SizedBox(
                                  height: 2.h,
                                ),
                                profileRowNaming(
                                    text1: "PayPal ID", text2: "123"),
                                SizedBox(
                                  height: 1.h,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
