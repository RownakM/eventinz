import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/widgets/app_bar_widget.dart';
import '../../../../app/widgets/events_count_widget.dart';
import '../../../../app/widgets/input_textfield.dart';
import '../../../../app/widgets/widgits.dart';
import '../controllers/vendor_dashboard_controller.dart';

class VendorDashboardView extends GetView<VendorDashboardController> {
  const VendorDashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VendorDashboardController>(
        init: VendorDashboardController(),
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
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          vendorDashBoardCardWidget(
                              color: AppColors.lightYellow,
                              icon: "payments",
                              text: "Event Payment Pending Approval",
                              count: "0"),
                          vendorDashBoardCardWidget(
                              color: AppColors.lightPink,
                              icon: "celebration",
                              text: "Eventinz Loads",
                              count: "20/20"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          vendorDashBoardCardWidget(
                              color: AppColors.lightSky,
                              icon: "accept_order",
                              text: "Accepted Orders ",
                              count: "0"),
                          vendorDashBoardCardWidget(
                              color: AppColors.widghtYellow,
                              icon: "pending",
                              text: "Quote Pending Payment Approval",
                              count: "0"),
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
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: "Eventinz HotSpots",
                            fontSize: 14,
                          ),
                          SizedBox(
                            height: 1.4.h,
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 12),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    VendorEventCountWidget(
                                      eventName: 'Total Events',
                                      total: "25",
                                      bgColor: AppColors.kPrimary,
                                      img: "event",
                                    ),
                                    VendorEventCountWidget(
                                      eventName: 'Clicks',
                                      total: "1.02k",
                                      bgColor: Colors.blueAccent,
                                      img: "click",
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    VendorEventCountWidget(
                                      eventName: 'Packages',
                                      total: "0",
                                      bgColor: AppColors.kSecondary,
                                      img: "package",
                                    ),
                                    VendorEventCountWidget(
                                      eventName: 'Quote Request',
                                      total: "1.02k",
                                      bgColor: AppColors.kPrimary,
                                      img: "quote",
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      width: 100.w,
                      height: 22.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Eventinz\nYour Event Your way",
                                  fontSize: 14,
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                TextWidget(
                                  text: "Set up to Date",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                TextWidget(
                                  text:
                                      "Lorem ipsum dolor sit amet\nconsectetur adipiscing\nelit, sed do eiusmod\ntempor incididunt ut",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                chipContainer(text: 'Read More'),
                              ],
                            ),
                          ),
                          Container(
                            width: 47.4.w,
                            height: 14.4.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        Utils.getImagePath("event_banner1")))),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      width: 100.w,
                      height: 22.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Get a Step Ahead with\nEventinz",
                                  fontSize: 14,
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                TextWidget(
                                  text:
                                      "Lorem ipsum dolor sit amet\nconsectetur adipiscing\nelit, sed do eiusmod\ntempor incididunt ut",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                chipContainer(text: 'Read More'),
                              ],
                            ),
                          ),
                          Container(
                            width: 47.4.w,
                            height: 14.4.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        Utils.getImagePath("event_banner2")))),
                          ),
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
