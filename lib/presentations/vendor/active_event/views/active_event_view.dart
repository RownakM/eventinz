import 'package:eventing/app/widgets/widgits.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/widgets/app_bar_widget.dart';
import '../../../../app/widgets/input_textfield.dart';
import '../controllers/active_event_controller.dart';

class ActiveEventView extends GetView<ActiveEventController> {
  const ActiveEventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ActiveEventController>(
        init: ActiveEventController(),
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
                      height: 17.h,
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
                                    text: "Active Events",
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
                            bottom: 0.h,
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
                                        TextWidget(
                                          text: "Show ",
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        Container(
                                          height: 3.h,
                                          width: 7.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.grey)),
                                          child: DropdownButton(
                                            iconSize: 10,
                                            underline: Container(),
                                            isExpanded: false,
                                            value: controller.entries,
                                            icon: Icon(
                                                size: 10,
                                                Icons.keyboard_arrow_down),
                                            items: controller.entriesList
                                                .map((items) {
                                              return DropdownMenuItem(
                                                value: items,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.0),
                                                  child: TextWidget(
                                                    text: "$items",
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (v) {
                                              controller.entries = v.toString();
                                              controller.update();
                                            },
                                          ),
                                        ),
                                        TextWidget(
                                          text: " Entries",
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        TextWidget(
                                          text: "Search",
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Container(
                                          height: 4.h,
                                          width: 50.w,
                                          child: InputSearchTextField(
                                            hint: 'Search',
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.w, right: 3.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          activeEventTile(),
                          activeEventTile(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.w, right: 3.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          activeEventTile(),
                          activeEventTile(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.w, right: 3.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          activeEventTile(),
                          activeEventTile(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
