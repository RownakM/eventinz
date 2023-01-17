import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/widgets/app_bar_widget.dart';
import '../../../../app/widgets/input_textfield.dart';
import '../../../../app/widgets/widgits.dart';
import '../controllers/gallery_controller.dart';

class GalleryView extends GetView<GalleryController> {
  const GalleryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GalleryController>(
        init: GalleryController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.bgColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(200.0),
              child: VendorAppBarWidget(
                onTap: () {},
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 7.8.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  Utils.getImagePath("app_bar_banner")))),
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: Row(
                          children: [
                            InkResponse(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            TextWidget(
                              text: "My Gallery",
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 6.33.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: AppColors.kWhite,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              blurRadius: 8)
                        ],
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 3.h,
                                  width: 25.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: DropdownButton(
                                    iconSize: 10,
                                    hint: TextWidget(
                                      text: "  -- No filter applied --",
                                      fontSize: 9,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    underline: Container(),
                                    isExpanded: false,
                                    value: controller.entries,
                                    icon: Icon(
                                        size: 10, Icons.keyboard_arrow_down),
                                    items: controller.entriesList.map((items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 2.0),
                                          child: TextWidget(
                                            text: "$items",
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (v) {
                                      controller.entries = v.toString();
                                      controller.update();
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 19.w,
                              height: 2.5.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: AppColors.kPrimary),
                              child: Center(
                                child: TextWidget(
                                  text: "Upload Image",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          galleryImageWidget(),
                          galleryImageWidget(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          galleryImageWidget(),
                          galleryImageWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
