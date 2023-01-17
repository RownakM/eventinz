import 'package:eventing/app/routes/app_pages.dart';
import 'package:eventing/app/widgets/input_textfield.dart';
import 'package:eventing/presentations/auth/views/signup_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app/config/app_colors.dart';
import '../controllers/auth_controller.dart';

class LoginView extends GetView<AuthController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      autoRemove: false,
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
                          child: TextWidget(
                        text: "Login",
                        fontWeight: FontWeight.w700,
                        fontSize: 25.sp,
                      )),
                      SizedBox(
                        height: 15.h,
                      ),
                      InputTextField(
                        controller: controller.emailController,
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
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: AppColors.kPrimary,
                                  value: controller.remember,
                                  onChanged: (value) {
                                    controller.remember = value!;
                                    controller.update();
                                  }),
                              TextWidget(
                                text: "Remember Me", fontSize: 12,
                                // fontSize: 25.sp,
                              )
                            ],
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text("Forgot Password ?"))
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
                            if (controller.emailController.text
                                    .toString()
                                    .toLowerCase() ==
                                "user") {
                              Get.toNamed(Routes.MAIN);
                            } else {
                              Get.toNamed(Routes.HOME);
                            }
                          },
                          child: TextWidget(
                            text: "Login",
                            color: AppColors.kWhite,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(
                            text: "Don’t have an account?",
                            fontSize: 12,
                          ),
                          TextButton(
                              onPressed: () {
                                Get.to(() => SignupView());
                              },
                              child: Text("Creat New"))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
