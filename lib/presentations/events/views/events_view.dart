import 'package:eventing/presentations/events/views/show_events_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app/config/app_colors.dart';
import '../../../app/widgets/app_bar_widget.dart';
import '../../../app/widgets/events_count_widget.dart';
import '../../../app/widgets/input_textfield.dart';
import '../../../app/widgets/widgits.dart';
import '../controllers/events_controller.dart';

class EventsView extends GetView<EventsController> {
  const EventsView({Key? key}) : super(key: key);
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Container(
                height: 63.7.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
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
                            eventName: "Ongoing Events",
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
                            eventName: "Completed Events ",
                            bgColor: AppColors.green,
                          ),
                          EventCountWidget(
                            total: 0,
                            eventName: "Archieve  Events",
                            bgColor: AppColors.kPrimary,
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
                            eventName: "Cancel Events",
                            bgColor: AppColors.kSecondary,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SizedBox(
                        width: 100.w,
                        height: 7.h,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: AppColors.kSecondary,
                          onPressed: () {
                            Get.to(() => ShowEventView());
                          },
                          child: TextWidget(
                            text: "Show Archieve Events",
                            color: AppColors.kWhite,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
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
              eventTileWidget(),
              SizedBox(
                height: 3.h,
              ),
              eventTileWidget(),
              SizedBox(
                height: 3.h,
              ),
              eventTileWidget(),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
