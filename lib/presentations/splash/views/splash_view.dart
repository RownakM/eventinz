import 'package:eventing/app/config/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          body: Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(Utils.getImagePath("splash_bg")))),
            child: Center(
              child: Image.asset(
                Utils.getIconPath("logo"),
                scale: 4,
              ),
            ),
          ),
        );
      },
    );
  }
}
