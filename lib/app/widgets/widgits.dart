import 'package:eventing/presentations/vendor/packages/views/show_package_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../config/app_colors.dart';
import 'input_textfield.dart';

enum Screen { package }

liveContainer() {
  return Container(
    height: 2.h,
    width: 9.4.w,
    decoration: BoxDecoration(
        color: AppColors.kPrimary, borderRadius: BorderRadius.circular(4)),
    child: Center(
      child: TextWidget(
        text: "Live",
        fontSize: 9,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),
  );
}

priceRangeContainer() {
  return Container(
    height: 2.h,
    width: 10.w,
    decoration: BoxDecoration(
        color: AppColors.kPrimary, borderRadius: BorderRadius.circular(4)),
    child: Center(
      child: TextWidget(
        text: "500-599",
        fontSize: 9,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),
  );
}

chipContainer({required String text}) {
  return Container(
    height: 2.h,
    padding: EdgeInsets.only(left: 2, right: 2, top: 1, bottom: 1),
    decoration: BoxDecoration(
        border: Border.all(color: AppColors.kPrimary, width: 1),
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(3)),
    child: Center(
      child: TextWidget(
        text: "$text",
        fontSize: 9,
        fontWeight: FontWeight.w400,
        color: AppColors.kPrimary,
      ),
    ),
  );
}

textWithIcon({required text, required IconData icon}) {
  return Row(
    children: [
      Icon(
        icon,
        size: 12,
      ),
      TextWidget(
        text: "   $text",
        fontSize: 8,
        fontWeight: FontWeight.w400,
      ),
    ],
  );
}

coloredButtonEvent({required String text}) {
  return InkWell(
    onTap: () {},
    child: Container(
      width: 24.1.w,
      height: 3.1.h,
      decoration: BoxDecoration(
          color: AppColors.kSecondary, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: TextWidget(
          text: "$text",
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontSize: 10,
        ),
      ),
    ),
  );
}

borderColoredButtonEvent({required String text}) {
  return InkWell(
    onTap: () {},
    child: Container(
      width: 24.1.w,
      height: 3.1.h,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.kSecondary, width: 1),
          color: AppColors.kWhite,
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: TextWidget(
          text: "$text",
          fontWeight: FontWeight.w400,
          color: AppColors.kSecondary,
          fontSize: 10,
        ),
      ),
    ),
  );
}

eventTileWidget() {
  return Container(
    height: 18.7.h,
    width: 100.w,
    decoration: BoxDecoration(
      color: AppColors.kWhite,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 2.0.w, right: 2.w, top: 2.5.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: "Socail Events",
                fontSize: 16,
              ),
              liveContainer(),
            ],
          ),
          SizedBox(
            height: 1.2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  chipContainer(text: 'Jewelry'),
                  SizedBox(
                    width: 1.5.w,
                  ),
                  chipContainer(text: 'Fashion'),
                  SizedBox(
                    width: 1.5.w,
                  ),
                  chipContainer(text: 'Beauty'),
                  SizedBox(
                    width: 1.5.w,
                  ),
                  chipContainer(text: 'Event Planner'),
                  SizedBox(
                    width: 1.5.w,
                  ),
                ],
              ),
              priceRangeContainer()
            ],
          ),
          SizedBox(
            height: 1.2.h,
          ),
          TextWidget(
            text: "Desc Here",
            fontSize: 9,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(
            height: 0.8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textWithIcon(
                  text: "26 October 2022", icon: Icons.calendar_month_outlined),
              textWithIcon(
                  text: "West Bengal India ", icon: Icons.location_on_outlined),
              textWithIcon(
                  text: "20.4K -61.19K US",
                  icon: Icons.monetization_on_outlined),
              textWithIcon(
                  text: "26 October 2022", icon: Icons.calendar_month_outlined),
              textWithIcon(text: "0 Proposals", icon: Icons.email_outlined),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: "#318",
                fontWeight: FontWeight.w900,
                color: Colors.black12,
                fontSize: 25,
              ),
              Row(
                children: [
                  borderColoredButtonEvent(text: "Cancel Event"),
                  SizedBox(
                    width: 1.w,
                  ),
                  coloredButtonEvent(text: "Archieve Event"),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}

expensionTileWidget({required title}) {
  return Theme(
    data: ThemeData().copyWith(dividerColor: Colors.transparent),
    child: ExpansionTile(
      title: TextWidget(
        text: "$title",
        fontWeight: FontWeight.w400,
        fontSize: 13,
      ),
      children: <Widget>[
        ListTile(
          title: TextWidget(
            text:
                "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups. Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
            fontWeight: FontWeight.w400,
            fontSize: 10,
          ),
        )
      ],
    ),
  );
}

messageTileUnselected({
  required img,
}) {
  return Container(
    height: 11.6.h,
    width: 100.w,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: AppColors.kWhite,
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(Utils.getImagePath("$img")),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "Vendor 1",
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: AppColors.kBlack,
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    TextWidget(
                      text: "You : Hey there",
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: AppColors.kBlack.withOpacity(0.44),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(
                    text: "13 oct",
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: AppColors.kBlack,
                  ),
                  SizedBox(
                    height: 1.2.h,
                  ),
                  Image.asset(
                    Utils.getIconPath("read"),
                    scale: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

messageTileSelected({
  required img,
}) {
  return Container(
    height: 11.6.h,
    width: 100.w,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Color.fromRGBO(159, 0, 126, 0.25),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(Utils.getImagePath("$img")),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "Vendor 1",
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: AppColors.kBlack,
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    TextWidget(
                      text: "You : Hey there",
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: AppColors.kBlack.withOpacity(0.44),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(
                    text: "13 oct",
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: AppColors.kBlack,
                  ),
                  SizedBox(
                    height: 1.2.h,
                  ),
                  Image.asset(
                    Utils.getIconPath("read"),
                    scale: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

leftMessageTile() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(
        radius: 18,
        backgroundImage: AssetImage(Utils.getImagePath("person2")),
      ),
      SizedBox(
        width: 3.w,
      ),
      Container(
        width: 51.2.w,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(5)),
        child: TextWidget(
          text:
              "Lorem Ipsum is simply dummy text of the printing and typesetting ",
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      )
    ],
  );
}

rightMessageTile() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 51.2.w,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Color.fromRGBO(231, 191, 222, 1),
            borderRadius: BorderRadius.circular(5)),
        child: TextWidget(
          text:
              "Lorem Ipsum is simply dummy text of the printing and typesetting ",
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(
        width: 3.w,
      ),
      CircleAvatar(
        radius: 18,
        backgroundImage: AssetImage(Utils.getImagePath("person2")),
      ),
    ],
  );
}

activeEventTile() {
  return Container(
    width: 44.1.w,
    height: 24.5.h,
    child: Stack(
      children: [
        Column(
          children: [
            Container(
              width: 44.1.w,
              height: 14.5.h,
              padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                  color: AppColors.kWhite),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "#522",
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: AppColors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Utils.getIconPath("event"),
                        color: AppColors.grey,
                        scale: 3,
                      ),
                      TextWidget(
                        text: "Host Name",
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                      TextWidget(
                        text: "KK Menon",
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          TextWidget(
                            text: "Posted On",
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54,
                          ),
                          TextWidget(
                            text: "29-9-2022",
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      TextWidget(
                        text: "Event Type",
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                      TextWidget(
                        text: "Corporate\nEvent",
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                ],
              ),
            ),
            Container(
              width: 44.1.w,
              height: 8.5.h,
              padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                color: AppColors.kSecondary.withOpacity(0.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "Description",
                    fontSize: 9,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  TextWidget(
                    text:
                        "Organiser une réception pour le départ de deux retraités avec un maximum de 100 invités",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            )
          ],
        ),
        Positioned(
          bottom: 0.h,
          right: 1.w,
          child: Row(
            children: [
              Container(
                width: 18.71.w,
                height: 2.8.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.kSecondary),
                child: Center(
                  child: TextWidget(
                    text: "View More",
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

quoteTileWidget() {
  return Container(
    child: Column(
      children: [
        Container(
          width: 90.7.w,
          height: 16.7.h,
          padding: EdgeInsets.only(top: 2.h, right: 2.w, left: 2.w),
          decoration: BoxDecoration(
            color: AppColors.kWhite,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Utils.getIconPath("quote"),
                    scale: 2,
                    color: AppColors.grey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Name",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                      TextWidget(
                        text: "Lorem Ipsum ",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Vendor Category",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                      TextWidget(
                        text: "Jewelry",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  TextWidget(
                    text: "Action",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                  TextWidget(
                    text: "Check",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Approx. Event Date",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                      TextWidget(
                        text: "29-9-2022",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Guests",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                      TextWidget(
                        text: "522",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Requested On",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                      TextWidget(
                        text: "29-9-2022",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 90.7.w,
          height: 7.7.h,
          padding: EdgeInsets.only(top: 1.h, right: 2.w, left: 2.w),
          decoration: BoxDecoration(
            color: AppColors.kPrimary.withOpacity(0.5),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: "User Message",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
              TextWidget(
                text:
                    "Organiser une réception pour le départ de deux retraités avec un maximum de 100 invités.",
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

transactionTileWidget() {
  return Container(
    child: Column(
      children: [
        Container(
          width: 90.7.w,
          height: 13.h,
          padding: EdgeInsets.only(top: 2.h, right: 2.w, left: 2.w),
          decoration: BoxDecoration(
            color: AppColors.kWhite,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Utils.getIconPath("recept"),
                    scale: 2.5,
                    // color: AppColors.grey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Host\nName",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      TextWidget(
                        text: "Lorem Ipsum ",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Bank\nName",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      TextWidget(
                        text: "State Bank of \nIndia",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Account\nName",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      TextWidget(
                        text: "Lorm i",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Status",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      TextWidget(
                        text: "Checked",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
        Container(
          width: 90.7.w,
          height: 10.h,
          padding: EdgeInsets.only(top: 1.h, right: 2.w, left: 2.w),
          decoration: BoxDecoration(
            color: AppColors.kSecondary.withOpacity(0.5),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Transaction\nDate",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      TextWidget(
                        text: "29-9-2022",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Transaction\nFile",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      TextWidget(
                        text: "File Name",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Amount",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      TextWidget(
                        text: "912**********",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Bank Account\nNumber",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      TextWidget(
                        text: "1233*****8",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

packageTileWidget() {
  return Container(
    width: 42.8.w,
    height: 28.43.h,
    child: Stack(
      children: [
        Container(
          width: 42.8.w,
          height: 27.43.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              )),
          child: Column(
            children: [
              Container(
                width: 42.8.w,
                height: 14.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          Utils.getImagePath("event"),
                        ))),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: "Package 12",
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                        PopupMenuButton(
                          onSelected: (Screen screen) {
                            if (screen == Screen.package) {
                              Get.to(() => ShowPackageDetails());
                            }
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.zero,
                          splashRadius: 5,
                          offset: Offset(-15, 30),
                          icon: Icon(
                            Icons.more_vert,
                            size: 12,
                          ),
                          itemBuilder: (context) {
                            return <PopupMenuEntry<Screen>>[
                              PopupMenuItem(
                                value: Screen.package,
                                height: 3.h,
                                padding: EdgeInsets.only(left: 2.w),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.visibility,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    TextWidget(
                                      text: "View",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                height: 3.h,
                                padding: EdgeInsets.only(left: 2.w),
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.delete_solid,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    TextWidget(
                                      text: "View",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ];
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 13,
                                    color: AppColors.kSecondary,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  TextWidget(
                                    text: "No Rating",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: AppColors.kSecondary,
                                  ),
                                ],
                              ),
                              TextWidget(
                                text: "(0)",
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextWidget(
                                text: "Created At",
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: AppColors.kSecondary,
                              ),
                              TextWidget(
                                text: "25-10-2022",
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            right: 5,
            child: Container(
              width: 26.41.w,
              height: 3.1.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.kSecondary,
              ),
              child: Center(
                child: TextWidget(
                  text: "Price : 1223.00 INR",
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ))
      ],
    ),
  );
}

packageDetailsTileWidget() {
  return Container(
    width: 90.7.w,
    height: 28.43.h,
    child: Stack(
      children: [
        Container(
          width: 90.7.w,
          height: 27.43.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              )),
          child: Column(
            children: [
              Container(
                width: 90.7.w,
                height: 14.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          Utils.getImagePath("event_banner"),
                        ))),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: "Package 12",
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                        PopupMenuButton(
                          onSelected: (Screen screen) {
                            /* if (screen == Screen.event) {
                        Get.toNamed(Routes.CREATE_EVENT);
                      }*/
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.zero,
                          splashRadius: 5,
                          offset: Offset(-15, 30),
                          icon: Icon(
                            Icons.more_vert,
                            size: 12,
                          ),
                          itemBuilder: (context) {
                            return <PopupMenuEntry<Screen>>[
                              PopupMenuItem(
                                height: 3.h,
                                padding: EdgeInsets.only(left: 2.w),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.visibility,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    TextWidget(
                                      text: "View",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                height: 3.h,
                                padding: EdgeInsets.only(left: 2.w),
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.delete_solid,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    TextWidget(
                                      text: "View",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ];
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 13,
                                    color: AppColors.kSecondary,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  TextWidget(
                                    text: "No Rating",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: AppColors.kSecondary,
                                  ),
                                ],
                              ),
                              TextWidget(
                                text: "(0)",
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextWidget(
                                text: "Created At",
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: AppColors.kSecondary,
                              ),
                              TextWidget(
                                text: "25-10-2022",
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            right: 5,
            child: Container(
              width: 26.41.w,
              height: 3.1.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.kSecondary,
              ),
              child: Center(
                child: TextWidget(
                  text: "Price : 1223.00 INR",
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ))
      ],
    ),
  );
}

galleryImageWidget() {
  return Container(
    width: 42.8.w,
    height: 14.8.h,
    decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage(Utils.getImagePath("event")))),
  );
}

vendorDashBoardCardWidget(
    {required Color color, required icon, required text, required count}) {
  return Container(
      child: Column(
    children: [
      Container(
        width: 42.w,
        height: 11.5.h,
        padding: EdgeInsets.only(left: 2.w, top: 1.5.h),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Utils.getIconPath("$icon"),
              scale: 4,
            ),
            SizedBox(
              height: 1.h,
            ),
            TextWidget(
              text: "$text",
              fontWeight: FontWeight.w400,
              fontSize: 13,
            )
          ],
        ),
      ),
      Container(
        width: 42.w,
        height: 6.h,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: AppColors.kWhite,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            )),
        child: TextWidget(
          text: "$count",
          fontWeight: FontWeight.w400,
          fontSize: 21,
        ),
      )
    ],
  ));
}

profileRowNaming({required text1, required text2}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      TextWidget(
        text: "$text1",
        fontSize: 13,
        color: Colors.grey,
      ),
      SizedBox(
        width: 4.w,
      ),
      TextWidget(
        text: "$text2",
        fontSize: 13,
      ),
    ],
  );
}
