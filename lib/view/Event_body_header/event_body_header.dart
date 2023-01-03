import 'package:eventinz/view/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/view/custom_fonts/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class EventBodyHeader extends StatefulWidget {
  final String event_type;
  final bool isDetails;
  final bool isProposals;
  final bool isPayments;
  final String first_name;
  final String last_name;
  final String created_on;
  final String event_date;
  final String heads;
  const EventBodyHeader(
      {Key? key,
      required this.event_type,
      required this.isDetails,
      required this.isProposals,
      required this.isPayments,
      required this.first_name,
      required this.last_name,
      required this.created_on,
      required this.event_date,
      required this.heads})
      : super(key: key);

  @override
  _EventBodyHeaderState createState() => _EventBodyHeaderState();
}

class _EventBodyHeaderState extends State<EventBodyHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
                            "${widget.event_type}",
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
                                text: "${widget.heads}",
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
                    color: widget.isDetails ? Colors.white : Colors.transparent,
                    child: Text(
                      "Details",
                      style: regular.copyWith(
                          color: widget.isDetails ? Colors.black : Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    color:
                        widget.isProposals ? Colors.white : Colors.transparent,
                    child: Text(
                      "Proposals",
                      style: regular.copyWith(
                          color:
                              widget.isProposals ? Colors.black : Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    color:
                        widget.isPayments ? Colors.white : Colors.transparent,
                    child: Text(
                      "Payments",
                      style: regular.copyWith(
                          color:
                              widget.isPayments ? Colors.black : Colors.white,
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
                          "${widget.first_name[0]}",
                          style: regular.copyWith(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Gap(10),
                      Text(
                        "${widget.first_name} ${widget.last_name[0]}",
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
                              Gap(2),
                              Text(
                                "${DateFormat("dd MMMM yyyy").format(DateTime.parse(widget.created_on))}",
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
                              Gap(2),
                              Text(
                                "${DateFormat("dd MMMM yyyy").format(DateTime.parse(widget.event_date))}",
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
        ],
      ),
    );
  }
}
