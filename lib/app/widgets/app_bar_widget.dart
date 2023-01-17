import 'package:eventing/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../config/app_colors.dart';
import 'input_textfield.dart';

enum Screen { event }

enum Screen2 { profile, gallery, myProposal, chats }

class AppBarWidget extends StatelessWidget {
  VoidCallback onTap;
  AppBarWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.55.h,
      width: 100.w,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              Utils.getIconPath("logo"),
              height: 7.5.h,
            ),
            PopupMenuButton(
              onSelected: (Screen screen) {
                if (screen == Screen.event) {
                  Get.toNamed(Routes.CREATE_EVENT);
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.zero,
              offset: Offset(-15, 50),
              icon: Container(
                height: 39,
                width: 39,
                decoration: BoxDecoration(
                    color: AppColors.kPrimary, shape: BoxShape.circle),
                child: Center(
                  child: TextWidget(
                    text: 'R',
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kWhite,
                  ),
                ),
              ),
              itemBuilder: (context) {
                return <PopupMenuEntry<Screen>>[
                  PopupMenuItem(
                    child: ListTile(
                      trailing: Image.asset(
                        Utils.getIconPath("message_icon"),
                        scale: 4,
                      ),
                      title: Row(
                        children: [
                          TextWidget(
                            text: "Welcome !",
                            fontSize: 15,
                          ),
                          TextWidget(
                            text: "Rownak ",
                            fontSize: 15,
                            color: AppColors.kPrimary,
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem(
                      child: Container(
                    height: 4.5.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.kSecondary),
                    child: Center(
                      child: TextWidget(
                        text: "Switch to French",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  )),
                  PopupMenuItem(
                      value: Screen.event,
                      child: Container(
                        height: 4.5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.kSecondary),
                        child: Center(
                          child: TextWidget(
                            text: "+ Create an Event",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ];
              },
            ),
          ],
        ),
      ),
    );
  }
}

class VendorAppBarWidget extends StatelessWidget {
  VoidCallback onTap;
  VendorAppBarWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.55.h,
      width: 100.w,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              Utils.getIconPath("logo"),
              height: 7.5.h,
            ),
            PopupMenuButton(
              onSelected: (Screen2 screen) {
                if (screen == Screen2.profile) {
                  Get.toNamed(Routes.PROFILE);
                }
                if (screen == Screen2.gallery) {
                  Get.toNamed(Routes.GALLERY);
                }
                if (screen == Screen2.myProposal) {
                  Get.toNamed(Routes.MY_PROPOSAL);
                }
                if (screen == Screen2.chats) {
                  Get.toNamed(Routes.CHATS);
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.zero,
              offset: Offset(-15, 50),
              icon: Container(
                height: 39,
                width: 39,
                decoration: BoxDecoration(
                    color: AppColors.kPrimary, shape: BoxShape.circle),
                child: Center(
                  child: TextWidget(
                    text: 'R',
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kWhite,
                  ),
                ),
              ),
              itemBuilder: (context) {
                return <PopupMenuEntry<Screen2>>[
                  PopupMenuItem(
                    value: Screen2.profile,
                    child: ListTile(
                      leading: Image.asset(
                        Utils.getIconPath("person"),
                        scale: 3,
                      ),
                      title: TextWidget(
                        text: "Profile",
                        fontSize: 15,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: Screen2.gallery,
                    child: ListTile(
                      leading: Image.asset(
                        Utils.getIconPath("gallery"),
                        scale: 3,
                      ),
                      title: TextWidget(
                        text: "Gallery",
                        fontSize: 15,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: Screen2.myProposal,
                    child: ListTile(
                      leading: Image.asset(
                        Utils.getIconPath("proposal"),
                        color: Colors.black,
                        scale: 3,
                      ),
                      title: TextWidget(
                        text: "My Proposals",
                        fontSize: 15,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: Screen2.chats,
                    child: ListTile(
                      leading: Image.asset(
                        Utils.getIconPath("chat"),
                        scale: 4,
                      ),
                      title: TextWidget(
                        text: "Chats",
                        fontSize: 15,
                      ),
                    ),
                  ),
                ];
              },
            ),
          ],
        ),
      ),
    );
  }
}

roundedR() {
  return Container(
    height: 26,
    width: 26,
    decoration:
        BoxDecoration(color: AppColors.kPrimary, shape: BoxShape.circle),
    child: Center(
      child: TextWidget(
        text: 'R',
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: AppColors.kWhite,
      ),
    ),
  );
}

miniCol({required title, required description}) {
  return Column(
    children: [
      TextWidget(
        text: "$title",
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      SizedBox(
        height: 0.5.h,
      ),
      TextWidget(
        text: "$description",
        fontSize: 8,
        color: Color.fromRGBO(82, 82, 82, 0.5),
        fontWeight: FontWeight.w400,
      ),
    ],
  );
}
