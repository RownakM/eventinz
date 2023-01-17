import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app/widgets/input_textfield.dart';
import '../../create_event/controllers/create_event_controller.dart';

class EventGenerateView extends GetView<CreateEventController> {
  const EventGenerateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 45.h,
      color: Colors.transparent,
      child: Column(
        children: [
          TextWidget(
            text: "Generate Password",
            fontSize: 16,
          ),
          SizedBox(
            height: 3.h,
          ),
          TextWidget(
            text: "Please verify your curren password to continue",
            fontSize: 13,
          ),
          SizedBox(
            height: 3.h,
          ),
          InputTextField(
            obSecure: true,
            hint: 'New Password',
          ),
          SizedBox(
            height: 3.h,
          ),
          InputTextField(
            obSecure: true,
            hint: 'Confirm Password',
          ),
        ],
      ),
    );
  }
}
