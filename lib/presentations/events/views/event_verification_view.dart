import 'package:eventing/app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app/widgets/input_textfield.dart';
import '../../create_event/controllers/create_event_controller.dart';

class EventVerificationView extends GetView<CreateEventController> {
  const EventVerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 45.h,
      color: Colors.transparent,
      child: Column(
        children: [
          TextWidget(
            text: "Enter OTP",
            fontSize: 16,
          ),
          SizedBox(
            height: 3.h,
          ),
          TextWidget(
            text: "A 6 digit OTP has been send to your email id",
            fontSize: 13,
          ),
          SizedBox(
            height: 3.h,
          ),
          InputTextField(
            obSecure: true,
            hint: 'OTP',
          ),
          SizedBox(
            height: 3.h,
          ),
          TextButton(
            onPressed: () {},
            child: TextWidget(
              text: "Resend OTP",
              fontWeight: FontWeight.w400,
              color: AppColors.kPrimary,
              fontSize: 13,
            ),
          )
        ],
      ),
    );
  }
}
