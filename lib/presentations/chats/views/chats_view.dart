import 'package:eventing/presentations/chats/views/message_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app/config/app_colors.dart';
import '../../../app/widgets/app_bar_widget.dart';
import '../../../app/widgets/input_textfield.dart';
import '../../../app/widgets/widgits.dart';
import '../controllers/chats_controller.dart';

class ChatsView extends GetView<ChatsController> {
  const ChatsView({Key? key}) : super(key: key);
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
                      text: "Chats",
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: AppColors.kWhite,
                    ),
                  ),
                ],
              ),
            ),
            messageTileUnselected(img: "person1"),
            InkWell(
              onTap: () {
                Get.to(() => MessageView());
              },
              child: messageTileSelected(img: "person2"),
            ),
            messageTileUnselected(img: "person3"),
          ],
        ),
      ),
    );
  }
}
