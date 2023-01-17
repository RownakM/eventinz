import 'package:eventing/presentations/auth/views/login_view.dart';
import 'package:eventing/presentations/auth/views/signup_verify_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app/config/app_colors.dart';
import '../../../app/widgets/input_textfield.dart';
import '../controllers/auth_controller.dart';

class SignupEmailView extends GetView<AuthController> {
  const SignupEmailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.kWhite,
            body: Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Utils.getImagePath("splash_bg")))),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 6.h,
                        ),
                        Center(
                            child: Column(
                          children: [
                            TextWidget(
                              text: "Signup",
                              fontWeight: FontWeight.w700,
                              fontSize: 25.sp,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            TextWidget(
                              textAlign: TextAlign.center,
                              text:
                                  "Get access to all our planning tools and event plannig details",
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            TextWidget(
                              textAlign: TextAlign.center,
                              text: " Email & Password",
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ],
                        )),
                        SizedBox(
                          height: 8.h,
                        ),
                        InputTextField(
                          hint: 'Email',
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        InputTextField(
                          obSecure: true,
                          hint: 'Password',
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        InputTextField(
                          obSecure: true,
                          hint: 'Confirm Password',
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                activeColor: AppColors.kPrimary,
                                value: controller.acceptTerm,
                                onChanged: (value) {
                                  controller.acceptTerm = value!;
                                  controller.update();
                                }),
                            TextWidget(
                              text: "I accept terms of use & Privacy Policy",
                              fontSize: 12,
                              // fontSize: 25.sp,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        SizedBox(
                          width: 100.w,
                          height: 7.h,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            color: AppColors.kPrimary,
                            onPressed: () {
                              Get.to(() => SignupVerifyView());
                            },
                            child: TextWidget(
                              text: "Continue",
                              color: AppColors.kWhite,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextWidget(
                          text: "OR",
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kBlack,
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
                            color: AppColors.deepBlue,
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Utils.getIconPath("facebook"),
                                  scale: 4,
                                ),
                                TextWidget(
                                  text: "   Sign up with Facebook",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: AppColors.kWhite,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              text: "Already have an account?",
                              fontSize: 12,
                            ),
                            TextButton(
                                onPressed: () {
                                  Get.to(() => LoginView());
                                },
                                child: Text("Sign in here"))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
