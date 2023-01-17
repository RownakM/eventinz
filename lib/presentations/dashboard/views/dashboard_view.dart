import 'package:eventing/app/config/app_colors.dart';
import 'package:eventing/app/widgets/input_textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app/widgets/app_bar_widget.dart';
import '../../../app/widgets/events_count_widget.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        init: DashboardController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.bgColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(200.0),
              child: AppBarWidget(
                onTap: () {},
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
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
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          size: 18,
                                        ),
                                        TextWidget(
                                          text: "From: USA",
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400,
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.calendar_month_outlined,
                                          size: 18,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 1.0.h,
                                            ),
                                            TextWidget(
                                              text: "Member Since :",
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            TextWidget(
                                              text: "30 Nov 2022",
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ],
                                        )
                                      ],
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
                          Positioned(
                            bottom: 5.h,
                            left: 2.w,
                            child: Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle),
                                ),
                                TextWidget(
                                  text: " Online",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0.8,
                    ),
                    Container(
                      height: 8.33.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: AppColors.kWhite,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: "About Me",
                              fontSize: 16,
                            ),
                            SizedBox(
                              height: 1.0.h,
                            ),
                            TextWidget(
                              text: "Add “About Me” to show up here",
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Container(
                      height: 8.33.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: AppColors.kWhite,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: "Quote Request (0)",
                              fontSize: 16,
                            ),
                            SizedBox(
                              height: 1.0.h,
                            ),
                            TextWidget(
                              text: "No Qoute Requests Found ! ",
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Container(
                      height: 34.7.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: AppColors.kWhite,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: "Events",
                              fontSize: 16,
                            ),
                            SizedBox(
                              height: 1.0.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                EventCountWidget(
                                  total: 0,
                                  eventName: "Total Event",
                                  bgColor: AppColors.kPrimary,
                                ),
                                EventCountWidget(
                                  total: 0,
                                  eventName: "Total Event",
                                  bgColor: AppColors.kSecondary,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.0.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                EventCountWidget(
                                  total: 0,
                                  eventName: "Total Event",
                                  bgColor: AppColors.green,
                                ),
                                EventCountWidget(
                                  total: 0,
                                  eventName: "Total Event",
                                  bgColor: AppColors.kPrimary,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
