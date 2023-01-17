import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/widgets/app_bar_widget.dart';
import '../../../../app/widgets/input_textfield.dart';
import '../../../../app/widgets/widgits.dart';
import '../controllers/event_transactions_controller.dart';

class EventTransactionsView extends GetView<EventTransactionsController> {
  const EventTransactionsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EventTransactionsController>(
        init: EventTransactionsController(),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TextWidget(
                                    text: "Transaction Details",
                                    color: AppColors.kWhite,
                                    fontSize: 16,
                                  ),
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
                    transactionTileWidget(),
                    SizedBox(
                      height: 2.h,
                    ),
                    transactionTileWidget(),
                    SizedBox(
                      height: 2.h,
                    ),
                    transactionTileWidget(),
                    SizedBox(
                      height: 2.h,
                    ),
                    transactionTileWidget(),
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
