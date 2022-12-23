import 'package:eventinz/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/Event_Card_Packs/event_cards_index.dart';
import 'package:eventinz/custom_fonts/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      // height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Stack(fit: StackFit.loose, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Stack(
                      fit: StackFit.loose,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 110,
                          child: Image.network(
                            "https://i.ibb.co/ncTWNMP/Rectangle-16.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            top: 60,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                alignment: Alignment.center,
                                color: Colors.transparent,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Lorem P",
                                      style: Heading.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17),
                                      textAlign: TextAlign.center,
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                            shadowColor: Colors.white,
                                            // padding: EdgeInsets.all(2),
                                            side: BorderSide(
                                                color: Colors.white,
                                                width: 0.4),
                                            surfaceTintColor: Colors.white),
                                        child: Text(
                                          "Edit Profile",
                                          style: Heading.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 13),
                                        )),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                    Container(
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            // offset: Offset(0, 0),
                            spreadRadius: -8,
                            blurRadius: 20,
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                          )
                        ],
                        // borderRadius: BorderRadius.circular(30)
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 79,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xFF525252),
                                ),
                                Text(
                                  "From : ",
                                  style: Heading.copyWith(fontSize: 13),
                                ),
                                Text(
                                  "India",
                                  style: Heading,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  color: Color(0xFF525252),
                                ),
                                Gap(5),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Member Since :",
                                      style: textCondense.copyWith(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("30 Nov 2022")
                                  ],
                                ),
                                Gap(10)
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Positioned(
              top: 65,
              left: 130,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          // offset: Offset(0, 0),
                          spreadRadius: -8,
                          blurRadius: 20,
                          color: Color.fromRGBO(0, 0, 0, 0.7),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  // color: Colors.white,
                  padding: EdgeInsets.all(15),

                  child: Image.network(
                    "https://eventinz.com/static/main_home1/assets/images/logo-footer.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )
          ]),
          Gap(10),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                // offset: Offset(0, 0),
                spreadRadius: -8,
                blurRadius: 20,
                color: Color.fromRGBO(0, 0, 0, 0.2),
              ),
            ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
            // color: Colors.white,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "About Me",
                  style: TitleFont.copyWith(fontSize: 23),
                ),
                Gap(10),
                Text(
                  "Add 'About Me' to show up here",
                  style: textLight.copyWith(
                      fontSize: 14, fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
          Gap(15),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                // offset: Offset(0, 0),
                spreadRadius: -8,
                blurRadius: 20,
                color: Color.fromRGBO(0, 0, 0, 0.2),
              ),
            ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
            // color: Colors.white,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Quote Request (0)",
                  style: TitleFont.copyWith(fontSize: 23),
                ),
                Gap(10),
                Text(
                  "No Quote Request Found",
                  style: textLight.copyWith(
                      fontSize: 14, fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
          Gap(10),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                // offset: Offset(0, 0),
                spreadRadius: -8,
                blurRadius: 20,
                color: Color.fromRGBO(0, 0, 0, 0.2),
              ),
            ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
            // color: Colors.white,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Events",
                  style: TitleFont.copyWith(fontSize: 23),
                ),
                Gap(10),
                Row(
                  children: [
                    EventCardsIndex(
                      text: "Total Events",
                      Count: "0",
                      ColorCode: primaryColor,
                    ),
                    EventCardsIndex(
                      text: "Total Events",
                      Count: "0",
                      ColorCode: secondaryColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    EventCardsIndex(
                      text: "Total Events",
                      Count: "0",
                      ColorCode: GreenColor,
                    ),
                    EventCardsIndex(
                      text: "Total Events",
                      Count: "0",
                      ColorCode: primaryColor,
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
}
