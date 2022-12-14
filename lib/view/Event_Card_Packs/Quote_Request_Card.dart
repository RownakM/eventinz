import 'package:eventinz/view/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/view/custom_fonts/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class QuoteRequestCard extends StatelessWidget {
  final String VendorID;
  // final List<dynamic> QuoteRequest;
  final String Message;
  final String event_type;
  final String status;
  final String number_of_guest;

  final String Quote_Date;
  final String created_at;

  const QuoteRequestCard({
    Key? key,
    required this.VendorID,
    required this.Message,
    required this.event_type,
    required this.status,
    required this.number_of_guest,
    required this.Quote_Date,
    required this.created_at,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        splashColor: primaryColor,
        onTap: () {
          debugPrint("OK");
        },
        child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${VendorID}",
                      style: TitleFont.copyWith(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: secondaryColor.withOpacity(0.88),
                      ),
                      child: Text(
                        "${status}",
                        style: TextFont.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Gap(7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            border: Border.all(width: 1, color: primaryColor),
                          ),
                          child: Text(
                            "${event_type}",
                            style: TextFont.copyWith(
                                color: primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Gap(4),
                      ],
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: primaryColor,
                      ),
                      child: Text(
                        "${number_of_guest} Guests",
                        style: TextFont.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Gap(10),
                Text(
                  "${Message}",
                  style: TextFont.copyWith(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 20,
                            color: Color(0xFF525252),
                          ),
                          Gap(5),
                          Text("${Quote_Date}"),
                        ],
                      ),
                    ),
                    Gap(4),
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(DateFormat("dd-MM-yyyy")
                              .format(DateTime.parse(created_at))
                              .toString()),
                          Gap(5),
                          Icon(
                            Icons.date_range_outlined,
                            size: 20,
                            color: Color(0xFF525252),
                          ),
                        ],
                      ),
                    ),
                    // Gap(4),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
