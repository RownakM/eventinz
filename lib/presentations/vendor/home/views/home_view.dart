import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/widgets/input_textfield.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Obx(() => Scaffold(
                body: controller.pages[controller.currentIndex.value],
                bottomNavigationBar: Container(
                  height: 9.h,
                  decoration: BoxDecoration(color: AppColors.kWhite),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkResponse(
                        onTap: () {
                          controller.currentIndex.value = 0;
                        },
                        child: navItem(controller.currentIndex, 0,
                            "Active Event", "event"),
                      ),
                      InkResponse(
                        onTap: () {
                          controller.currentIndex.value = 1;
                        },
                        child: navItem(controller.currentIndex, 1,
                            " Quote Request", "quote"),
                      ),
                      InkResponse(
                        onTap: () {
                          controller.currentIndex.value = 2;
                        },
                        child: navItem(controller.currentIndex, 2, "Dashboard",
                            "dashboard"),
                      ),
                      InkResponse(
                        onTap: () {
                          controller.currentIndex.value = 3;
                        },
                        child: navItem(
                            controller.currentIndex, 3, "Packages", "package"),
                      ),
                      InkResponse(
                        onTap: () {
                          controller.currentIndex.value = 4;
                        },
                        child: navItem(controller.currentIndex, 4,
                            "Event Transactions", "transaction"),
                      ),
                    ],
                  ),
                ),
              ));
        });
  }

  navItem(currentIndex, index, name, icon) {
    return Container(
      // width: 16.w,
      height: 12.h,
      decoration: BoxDecoration(
          color: currentIndex == index ? AppColors.kPrimary : AppColors.kWhite,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
                color:
                    currentIndex == index ? Colors.black : Colors.transparent,
                blurRadius: 0.2)
          ],
          border: currentIndex == index
              ? Border.all(color: Colors.white, width: 3)
              : Border.all(color: Colors.transparent, width: 0)),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Utils.getIconPath("$icon"),
                scale: 4,
                color: currentIndex == index
                    ? AppColors.kWhite
                    : AppColors.kBlack),
            SizedBox(
              height: 1.5.h,
            ),
            TextWidget(
              text: '$name',
              fontSize: 9,
              fontWeight: FontWeight.w400,
              color:
                  currentIndex == index ? AppColors.kWhite : AppColors.kBlack,
            ),
          ],
        ),
      ),
    );
  }
}
