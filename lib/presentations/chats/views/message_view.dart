import 'package:eventing/app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app/widgets/app_bar_widget.dart';
import '../../../app/widgets/input_textfield.dart';
import '../../../app/widgets/widgits.dart';
import '../controllers/chats_controller.dart';

class MessageView extends GetView<ChatsController> {
  const MessageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBarWidget(
          onTap: () {},
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15.0.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
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
                                width: 2.w,
                              ),
                              CircleAvatar(
                                radius: 18,
                                backgroundImage:
                                    AssetImage(Utils.getImagePath("person2")),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              TextWidget(
                                text: "Vender 1",
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.more_vert_rounded,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      leftMessageTile(),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          rightMessageTile(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 100.w,
                height: 8.h,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 3.w,
                    ),
                    Flexible(
                        child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: "Write a message...",
                        filled: true,
                        // fillColor: Color.fromRGBO(238, 238, 238, 1),
                        border: InputBorder.none,
                        prefixIcon: Image.asset(
                          Utils.getIconPath("mic"),
                          scale: 4,
                        ),
                        suffixIcon: Container(
                          width: 15.w,
                          child: Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  Utils.getIconPath("emoji"),
                                  scale: 4,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Image.asset(
                                  Utils.getIconPath("img"),
                                  scale: 4,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Image.asset(
                                  Utils.getIconPath("attach"),
                                  scale: 4,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
                    SizedBox(
                      width: 3.w,
                    ),
                    Container(
                      height: 6.5.h,
                      width: 8.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.kPrimary),
                      child: Center(
                        child: Image.asset(
                          Utils.getIconPath("send"),
                          scale: 4,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
