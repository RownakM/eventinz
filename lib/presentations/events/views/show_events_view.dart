import 'package:eventing/app/widgets/input_textfield.dart';
import 'package:eventing/app/widgets/widgits.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sizer/sizer.dart';

import '../../../app/config/app_colors.dart';
import '../../../app/widgets/app_bar_widget.dart';
import '../controllers/events_controller.dart';

class ShowEventView extends GetView<EventsController> {
  const ShowEventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: AppBarWidget(
            onTap: () {},
          ),
        ),
        body: SafeArea(
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
                        text: "Social Event",
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
              Container(
                height: 15.6.h,
                width: 100.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.kWhite),
                child: Padding(
                  padding: EdgeInsets.only(top: 12, left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "About the Event",
                        fontSize: 16,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          roundedR(),
                          SizedBox(
                            width: 2.w,
                          ),
                          TextWidget(
                            text: "Rownak M",
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          miniCol(
                              title: "Created On",
                              description: "Oct 23 2022 11:45 am"),
                          miniCol(
                              title: "Date of Event",
                              description: "Oct 26 2022"),
                          miniCol(
                              title: "Apporixmate Heads",
                              description: "500-599"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                height: 13.1.h,
                width: 100.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.kWhite),
                child: Padding(
                  padding: EdgeInsets.only(top: 12, left: 12, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: "Event Details",
                            fontSize: 16,
                          ),
                          TextWidget(
                            text: "20.4K -61.19K INR",
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      TextWidget(
                        text: "Desc Here",
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        children: [
                          chipContainer(text: "Jewelry"),
                          SizedBox(
                            width: 2.h,
                          ),
                          chipContainer(text: "Fashion"),
                          SizedBox(
                            width: 2.h,
                          ),
                          chipContainer(text: "Beauty"),
                          SizedBox(
                            width: 2.h,
                          ),
                          chipContainer(text: "Event Planner"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
