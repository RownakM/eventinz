import 'package:eventing/app/widgets/input_textfield.dart';
import 'package:eventing/presentations/vendor/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/widgets/app_bar_widget.dart';

class EditProfileView extends GetView<ProfileController> {
  const EditProfileView({Key? key}) : super(key: key);

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
                  Flexible(
                    flex: 2,
                    child: Container(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextWidget(
                                    text: "Lorem P",
                                    color: AppColors.kWhite,
                                    fontSize: 16,
                                  ),
                                  Container(
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
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
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
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Expanded(
                    flex: 4,
                    child: controller.pages[controller.currentIndex],
                  ),
                  Flexible(
                      flex: 1,
                      child: Container(
                        height: 10.h,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 8.0, right: 8, top: 8, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () => controller.backBtn(),
                                child: Container(
                                  width: 35.6.w,
                                  height: 4.5.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.kPrimary, width: 1),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Center(
                                    child: TextWidget(
                                      text: "Back",
                                      color: AppColors.kPrimary,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () => controller.nextBtn(),
                                child: Container(
                                  width: 35.6.w,
                                  height: 4.5.h,
                                  decoration: BoxDecoration(
                                      color: AppColors.kPrimary,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Center(
                                    child: TextWidget(
                                      text: "Next",
                                      color: AppColors.kWhite,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          );
        });
  }
}
