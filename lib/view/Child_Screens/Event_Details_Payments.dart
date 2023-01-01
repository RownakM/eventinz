import 'package:eventinz/view/Child_Screens/footer.dart';
import 'package:eventinz/view/Event_body_header/event_body_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EventDetailsPayments extends StatefulWidget {
  final String event_type;
  final String first_name;
  final String last_name;
  final String event_date;
  final String created_on;

  const EventDetailsPayments(
      {Key? key,
      required this.event_type,
      required this.first_name,
      required this.created_on,
      required this.last_name,
      required this.event_date})
      : super(key: key);

  @override
  _EventDetailsPaymentsState createState() => _EventDetailsPaymentsState();
}

class _EventDetailsPaymentsState extends State<EventDetailsPayments> {
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
              isPayments: true,
              isDetails: false,
              isProposals: false,
              first_name: widget.first_name,
              last_name: widget.last_name,
              created_on: widget.created_on,
              event_date: widget.event_date,
            ),
            Gap(10),
            Footer()
          ],
        ));
  }
}
