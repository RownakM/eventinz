import 'package:eventinz/view/Child_Screens/footer.dart';
import 'package:eventinz/view/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/view/Event_body_header/event_body_header.dart';
import 'package:eventinz/view/custom_fonts/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EventDetailsProposals extends StatefulWidget {
  final String event_type;
  final String first_name;
  final String last_name;
  final String event_date;
  final String created_on;
  final String heads;
  const EventDetailsProposals(
      {Key? key,
      required this.event_type,
      required this.first_name,
      required this.last_name,
      required this.created_on,
      required this.event_date,
      required this.heads})
      : super(key: key);

  @override
  _EventDetailsProposalsState createState() => _EventDetailsProposalsState();
}

class _EventDetailsProposalsState extends State<EventDetailsProposals> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.grey.shade100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EventBodyHeader(
                  event_type: widget.event_type,
                  isPayments: false,
                  isDetails: false,
                  isProposals: true,
                  first_name: widget.first_name,
                  last_name: widget.last_name,
                  event_date: widget.event_date,
                  created_on: widget.created_on,
                  heads: widget.heads),
              Gap(10),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Event Proposals",
                          style: TitleFont.copyWith(fontSize: 25)),
                    ),
                    Card(
                        child: Container(
                            width: MediaQuery.of(context).size.width - 0.005,
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: secondaryColor,
                                      child: Text(
                                        "R",
                                        style: TitleFont.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Gap(10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Vendor Name",
                                              style: TitleFont.copyWith(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text("150 Rs")
                                          ],
                                        ),
                                        Gap(5),
                                        Text(
                                          "Super je suis a votre disposition",
                                          style: regular.copyWith(fontSize: 17),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )))
                  ],
                ),
              ),
              Gap(10),
              Footer()
            ],
          )),
    );
  }
}
