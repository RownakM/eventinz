import 'package:eventinz/view/Child_Screens/footer.dart';
import 'package:eventinz/view/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/view/Event_body_header/event_body_header.dart';
import 'package:eventinz/view/custom_fonts/custom_fonts.dart';
import 'package:eventinz/view/custom_widgets/event_badge.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class EventDetailsBody extends StatefulWidget {
  final String first_name;
  final String last_name;
  final String event_type;
  final String event_desc;
  final String event_date;
  final String created_on;
  final String vendor_type;
  const EventDetailsBody(
      {Key? key,
      required this.event_type,
      required this.first_name,
      required this.last_name,
      required this.event_desc,
      required this.event_date,
      required this.created_on,
      required this.vendor_type})
      : super(key: key);

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
          EventBodyHeader(
            event_type: widget.event_type,
            isPayments: false,
            isDetails: true,
            isProposals: false,
            first_name: widget.first_name,
            last_name: widget.last_name,
            created_on: widget.created_on,
            event_date: widget.event_date,
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
                    "${widget.event_desc}",
                    style: regular.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Gap(15),
                  Row(
                    children: [
                      EventBadge(
                        badge_title: "${widget.vendor_type}",
                      ),
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
