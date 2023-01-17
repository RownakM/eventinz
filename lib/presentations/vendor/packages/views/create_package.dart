import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/widgets/app_bar_widget.dart';
import '../../../../app/widgets/input_textfield.dart';
import '../controllers/pakages_controller.dart';

class CreatePackage extends GetView<PakagesController> {
  const CreatePackage({Key? key}) : super(key: key);

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
                        Container(
                          width: 90.7.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Package\nDetails",
                                  fontSize: 13,
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                InputTextField(hint: "Package Name "),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                        child: InputTextField(
                                            hint: "Attendees Range")),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Flexible(
                                        child: InputTextField(
                                            hint: "  Valid Till")),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                InputTextField(
                                    hint: "Short Package Description"),
                                SizedBox(
                                  height: 3.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Container(
                          width: 90.7.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Package Price ",
                                  fontSize: 13,
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                        child: InputTextField(
                                            hint: "  Package Price (INR)e")),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Flexible(
                                        child: InputTextField(
                                            hint: "-Pricing Model-")),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Container(
                          width: 90.7.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Event Category",
                                  fontSize: 13,
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                        child: InputTextField(
                                            hint: "-Event Category-")),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Flexible(
                                        child: InputTextField(
                                            hint: "-Sub Event Category-")),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                        child:
                                            InputTextField(hint: "-Country-")),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Flexible(
                                        child: InputTextField(hint: "-State-")),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Container(
                          width: 90.7.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Package Thumbnail",
                                  fontSize: 13,
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 5.h,
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                            color: Colors.black54,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Center(
                                          child: TextWidget(
                                            text: "Choose File",
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
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
                                  height: 3.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
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
