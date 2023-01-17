import 'package:eventing/app/widgets/input_textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app/config/app_colors.dart';
import '../../../app/widgets/app_bar_widget.dart';
import '../../../app/widgets/widgits.dart';
import '../controllers/support_controller.dart';

class SupportView extends GetView<SupportController> {
  const SupportView({Key? key}) : super(key: key);
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
                        text: "Support",
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
                  // height: 4.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: AppColors.kWhite,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        topLeft: Radius.circular(8),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 17, top: 2.h),
                        child: TextWidget(
                          text: "Frequently Asked Questions",
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      expensionTileWidget(
                        title: "What is Eventinz?",
                      ),
                    ],
                  )),
              SizedBox(
                height: 0.2.h,
              ),
              Container(
                width: 100.w,
                color: Colors.white,
                child: expensionTileWidget(
                  title: "Who is an event host?",
                ),
              ),
              SizedBox(
                height: 0.2.h,
              ),
              Container(
                width: 100.w,
                color: Colors.white,
                child: expensionTileWidget(
                  title: "Does Eventiz plan events?",
                ),
              ),
              SizedBox(
                height: 0.2.h,
              ),
              Container(
                width: 100.w,
                color: Colors.white,
                child: expensionTileWidget(
                  title: "What is Eventinz?",
                ),
              ),
              SizedBox(
                height: 0.2.h,
              ),
              Container(
                width: 100.w,
                color: Colors.white,
                child: expensionTileWidget(
                  title: "What is Vendor?",
                ),
              ),
              SizedBox(
                height: 0.2.h,
              ),
              Container(
                width: 100.w,
                color: Colors.white,
                child: expensionTileWidget(
                  title: "Who is an event host?",
                ),
              ),
              SizedBox(
                height: 0.2.h,
              ),
              Container(
                width: 100.w,
                color: Colors.white,
                child: expensionTileWidget(
                  title: "Does Eventiz plan events?",
                ),
              ),
              SizedBox(
                height: 0.2.h,
              ),
              Container(
                height: 3.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    )),
              ),
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
