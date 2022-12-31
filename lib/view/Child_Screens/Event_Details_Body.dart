import 'package:eventinz/view/Child_Screens/footer.dart';
import 'package:eventinz/view/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/view/custom_fonts/custom_fonts.dart';
import 'package:eventinz/view/custom_widgets/event_badge.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EventDetailsBody extends StatefulWidget {
  const EventDetailsBody({Key? key}) : super(key: key);

  @override
  _EventDetailsBodyState createState() => _EventDetailsBodyState();
}

class _EventDetailsBodyState extends State<EventDetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://i.ibb.co/ncTWNMP/Rectangle-16.png",
                        ),
                        fit: BoxFit.cover)),
                width: MediaQuery.of(context).size.width,
                height: 0.299 * MediaQuery.of(context).size.width,
                // color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Social Event",
                            style: regular.copyWith(
                                color: Colors.white, fontSize: 25),
                          ),
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                alignment: PlaceholderAlignment.middle),
                            TextSpan(
                                text: "500-599",
                                style: regular.copyWith(fontSize: 15))
                          ]))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4))),
            // color: primaryColor,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.white,
                    child: Text(
                      "Details",
                      style: regular.copyWith(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.transparent,
                    child: Text(
                      "Proposals",
                      style: regular.copyWith(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.transparent,
                    child: Text(
                      "Payments",
                      style: regular.copyWith(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Gap(10),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About The Event",
                    style: regular.copyWith(
                        fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Gap(13),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        child: Text(
                          "R",
                          style: regular.copyWith(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Gap(10),
                      Text(
                        "Rownak M",
                        style: regular.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Gap(20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Created On",
                                style: regular.copyWith(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Gap(10),
                              Text(
                                "Oct 23 2022 11:45 am",
                                style: regular.copyWith(
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Date of Event",
                                style: regular.copyWith(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Gap(10),
                              Text(
                                "Oct 16 2022",
                                style: regular.copyWith(
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ),
          Gap(30),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Event Details",
                        style: regular.copyWith(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "20.4K - 61.19K INR",
                        style: regular.copyWith(
                            fontSize: 17, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  Gap(23),
                  Text(
                    "Desc Here...",
                    style: regular.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Gap(15),
                  Row(
                    children: [
                      EventBadge(
                        badge_title: "Jewelry",
                      ),
                      Gap(3),
                      EventBadge(
                        badge_title: "Fashion",
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Gap(30),
          Footer()
        ],
      ),
    );
  }
}
