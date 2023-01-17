import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/widgets/app_bar_widget.dart';
import '../../../../app/widgets/input_textfield.dart';
import '../../../../app/widgets/widgits.dart';
import '../controllers/my_proposal_controller.dart';

class MyProposalView extends GetView<MyProposalController> {
  const MyProposalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyProposalController>(
        init: MyProposalController(),
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
                      height: 7.8.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  Utils.getImagePath("app_bar_banner")))),
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: Row(
                          children: [
                            InkResponse(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            TextWidget(
                              text: "My Proposals",
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
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
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      borderRadius: BorderRadius.circular(2),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: DropdownButton(
                                    iconSize: 10,
                                    underline: Container(),
                                    isExpanded: false,
                                    value: controller.entries,
                                    icon: Icon(
                                        size: 10, Icons.keyboard_arrow_down),
                                    items: controller.entriesList.map((items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 2.0),
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
                              mainAxisAlignment: MainAxisAlignment.start,
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
                    SizedBox(
                      height: 3.h,
                    ),
                    quoteTileWidget(),
                    SizedBox(
                      height: 2.h,
                    ),
                    quoteTileWidget(),
                    SizedBox(
                      height: 2.h,
                    ),
                    quoteTileWidget(),
                    SizedBox(
                      height: 2.h,
                    ),
                    quoteTileWidget(),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
