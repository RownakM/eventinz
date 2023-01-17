import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/widgets/app_bar_widget.dart';
import '../../../../app/widgets/input_textfield.dart';
import '../../../../app/widgets/widgits.dart';
import '../controllers/pakages_controller.dart';
import 'create_package.dart';

class PackagesView extends GetView<PakagesController> {
  const PackagesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PakagesController>(
        init: PakagesController(),
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
                          text: "My Packages",
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
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      packageTileWidget(),
                      packageTileWidget(),
                    ],
                  ),
                ),
              ],
            )),
            floatingActionButton: FloatingActionButton.extended(
              backgroundColor: AppColors.kSecondary,
              onPressed: () {
                Get.to(() => CreatePackage());
              },
              label: Text('Create a Package'),
              // icon: Icon(Icons.add),
            ),
          );
        });
  }
}
