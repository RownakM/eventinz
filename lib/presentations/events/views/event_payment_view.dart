import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app/widgets/input_textfield.dart';
import '../../create_event/controllers/create_event_controller.dart';

class EventPaymentView extends GetView<CreateEventController> {
  const EventPaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      color: Colors.transparent,
      child: Column(
        children: [
          TextWidget(
            text: "Payment Options",
            fontSize: 16,
          ),
          SizedBox(
            height: 3.h,
          ),
          TextWidget(
            text: "Please enter your payment details",
            fontSize: 13,
          ),
          SizedBox(
            height: 4.h,
          ),
          InputTextField(
            hint: 'Name',
          ),
          SizedBox(
            height: 4.h,
          ),
          InputTextField(
            hint: 'Email',
          ),
          SizedBox(
            height: 4.h,
          ),
          InputTextField(
            textInputType: TextInputType.number,
            hint: 'Card Number',
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            children: [
              Flexible(
                child: InputTextField(
                  hint: 'Security Code',
                  textInputType: TextInputType.number,
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Flexible(
                child: InputTextField(
                  hint: 'dd-mm-yyyy',
                  show: "yes",
                  textInputType: TextInputType.datetime,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
