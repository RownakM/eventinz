import 'package:eventing/app/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/widgets/input_textfield.dart';
import '../../../../app/widgets/widgits.dart';
import '../controllers/pakages_controller.dart';

class ShowPackageDetails extends GetView<PakagesController> {
  const ShowPackageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PakagesController>(
        init: PakagesController(),
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
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 18.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/support_bg.png"))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: TextWidget(
                            text: "My Packages",
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: AppColors.kWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        packageDetailsTileWidget(),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          width: 90.7.w,
                          height: 11.8.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Package Details",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        TextWidget(
                                          text: "Package Name",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        TextWidget(
                                          text: "Package 12",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        TextWidget(
                                          text: "Attendees Range",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        TextWidget(
                                          text: "12-12",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        TextWidget(
                                          text: "Short Package Description",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        TextWidget(
                                          text: "123232",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          width: 90.7.w,
                          height: 11.8.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Package Price",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        TextWidget(
                                          text: "Package Price (INR)",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        TextWidget(
                                          text: "123.00-1234.00",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        TextWidget(
                                          text: "Pricing Model",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        TextWidget(
                                          text: "Event",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
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
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          width: 90.7.w,
                          height: 11.8.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Package Category",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        TextWidget(
                                          text: "Event Category",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        TextWidget(
                                          text: "123.00-1234.00",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        TextWidget(
                                          text: "Event Sub Category",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        TextWidget(
                                          text: "Event",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        TextWidget(
                                          text: "Country ",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        TextWidget(
                                          text: "Event",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        TextWidget(
                                          text: "Valid Till ",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        TextWidget(
                                          text: "Event",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          );
        });
  }
}
