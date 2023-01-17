import 'package:eventing/app/widgets/input_textfield.dart';
import 'package:eventing/presentations/create_event/views/event_information.dart';
import 'package:flutter/material.dart';
import 'package:another_stepper/another_stepper.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app/config/app_colors.dart';
import '../../../app/widgets/app_bar_widget.dart';
import '../../events/views/event_generate_view.dart';
import '../../events/views/event_payment_view.dart';
import '../../events/views/event_verification_view.dart';
import '../controllers/create_event_controller.dart';

class CreateEventView extends GetView<CreateEventController> {
  CreateEventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateEventController>(
      init: CreateEventController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(200.0),
            child: AppBarWidget(
              onTap: () {},
            ),
          ),
          body: Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(Utils.getImagePath("splash_bg")))),
            child: SafeArea(
              child: Column(
                children: [
                  TextWidget(
                    text: "Create an Event",
                    fontSize: 36,
                  ),
                  SizedBox(
                    height: 1.2.h,
                  ),
                  TextWidget(
                    text:
                        "Get access to all our planning tools and event plannig details",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    child: Theme(
                      data: Theme.of(context).copyWith(
                          colorScheme:
                              ColorScheme.light(primary: AppColors.kPrimary)),
                      child: Stepper(
                          margin: EdgeInsets.zero,
                          type: StepperType.horizontal,
                          currentStep: controller.currentStep,
                          onStepContinue: () {
                            if (controller.currentStep != 3) {
                              controller.currentStep++;
                              controller.update();
                            }

                            if (controller.currentStep == 0) {
                              controller.buttonText = "Continue";
                              controller.update();
                            }
                            if (controller.currentStep == 1) {
                              controller.buttonText = "Verify";
                              controller.update();
                            }
                            if (controller.currentStep == 2) {
                              controller.buttonText = "Proceed";
                              controller.update();
                            }
                            if (controller.currentStep == 3) {
                              controller.buttonText = "Pay Now";
                              controller.update();
                            }
                          },
                          onStepTapped: (v) {
                            controller.currentStep = v;
                            controller.update();
                          },
                          onStepCancel: () {
                            if (controller.currentStep > 0) {
                              controller.currentStep--;
                              controller.update();
                            }
                          },
                          controlsBuilder:
                              (BuildContext context, ControlsDetails details) {
                            return Padding(
                              padding: EdgeInsets.only(top: 8.0.h),
                              child: SizedBox(
                                width: 100.w,
                                height: 7.h,
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  color: AppColors.kPrimary,
                                  onPressed: details.onStepContinue,
                                  child: TextWidget(
                                    text: "${controller.buttonText}",
                                    color: AppColors.kWhite,
                                  ),
                                ),
                              ),
                            );
                          },
                          steps: [
                            Step(
                              isActive: controller.currentStep >= 0,
                              title: TextWidget(
                                text: "Event\nInformation",
                                fontWeight: FontWeight.w400,
                                color: controller.currentStep >= 0
                                    ? AppColors.kPrimary
                                    : Colors.black,
                                fontSize: 10,
                              ),
                              content: EventInformation(),
                            ),
                            Step(
                              isActive: controller.currentStep >= 1,
                              title: TextWidget(
                                text: "Get\nVerified",
                                fontWeight: FontWeight.w400,
                                color: controller.currentStep >= 1
                                    ? AppColors.kPrimary
                                    : Colors.black,
                                fontSize: 10,
                              ),
                              content: EventVerificationView(),
                            ),
                            Step(
                              isActive: controller.currentStep >= 2,
                              title: TextWidget(
                                text: "Generate\nPassword",
                                fontWeight: FontWeight.w400,
                                color: controller.currentStep >= 2
                                    ? AppColors.kPrimary
                                    : Colors.black,
                                fontSize: 10,
                              ),
                              content: EventGenerateView(),
                            ),
                            Step(
                              isActive: controller.currentStep >= 3,
                              title: TextWidget(
                                text: "Payment\nOptions",
                                fontWeight: FontWeight.w400,
                                color: controller.currentStep >= 3
                                    ? AppColors.kPrimary
                                    : Colors.black,
                                fontSize: 10,
                              ),
                              content: EventPaymentView(),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
