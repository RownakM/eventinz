import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../config/app_colors.dart';
import 'input_textfield.dart';

class EventCountWidget extends StatelessWidget {
  int total;
  String eventName;
  Color bgColor;
  EventCountWidget(
      {Key? key,
      required this.total,
      required this.eventName,
      required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.66.h,
      width: 41.w,
      decoration:
          BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(7)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 13.w,
            height: 6.3.h,
            decoration: BoxDecoration(
                color: AppColors.grey, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextWidget(
                text: "$total",
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.3.h),
            child: TextWidget(
              text: "$eventName",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class VendorEventCountWidget extends StatelessWidget {
  String total;
  String eventName;
  Color bgColor;
  String img;
  VendorEventCountWidget(
      {Key? key,
      required this.total,
      required this.img,
      required this.eventName,
      required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.66.h,
      width: 41.w,
      decoration:
          BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(7)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 13.w,
            height: 6.3.h,
            decoration: BoxDecoration(
                color: AppColors.grey, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextWidget(
                text: "$total",
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Utils.getIconPath("$img"),
                  scale: 4,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 2.w,
                ),
                TextWidget(
                  text: "$eventName",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
