import 'package:eventinz/view/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/view/custom_fonts/custom_fonts.dart';
import 'package:flutter/material.dart';

class EventBadge extends StatefulWidget {
  final String badge_title;
  const EventBadge({Key? key, required this.badge_title}) : super(key: key);

  @override
  _EventBadgeState createState() => _EventBadgeState();
}

class _EventBadgeState extends State<EventBadge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: primaryColor)),
      child: Text(
        widget.badge_title,
        style: regular.copyWith(
            color: primaryColor, fontSize: 13, fontWeight: FontWeight.bold),
      ),
    );
  }
}
