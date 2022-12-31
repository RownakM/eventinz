import 'package:eventinz/view/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/view/custom_fonts/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EventCardsIndex extends StatelessWidget {
  final String text;
  final String Count;
  final Color ColorCode;
  const EventCardsIndex(
      {Key? key,
      required this.Count,
      required this.text,
      required this.ColorCode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width / 2.3,
        height: 108,
        decoration: BoxDecoration(
            color: ColorCode, borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
                color: Colors.grey.shade200,
              ),
              child: Text(
                Count,
                style: TitleFont.copyWith(
                    fontWeight: FontWeight.normal, fontSize: 15),
              ),
            ),
            Gap(20),
            Text(
              text,
              style: regular.copyWith(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1),
            )
          ],
        ),
      ),
    );
  }
}
