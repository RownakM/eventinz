import 'package:eventinz/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/custom_fonts/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuoteRequestCard extends StatelessWidget {
  final String VendorID;
  // final List<dynamic> QuoteRequest;
  final String Message;
  const QuoteRequestCard(
      {Key? key, required this.VendorID, required this.Message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: primaryColor,
                    ),
                    child: Text(
                      "Live",
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
                          "Jewelry",
                          style: TextFont.copyWith(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Gap(4),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          border: Border.all(width: 1, color: primaryColor),
                        ),
                        child: Text(
                          "Jewelry",
                          style: TextFont.copyWith(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Gap(4),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          border: Border.all(width: 1, color: primaryColor),
                        ),
                        child: Text(
                          "Jewelry",
                          style: TextFont.copyWith(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: primaryColor,
                    ),
                    child: Text(
                      "500-599",
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
                          Text("26 October 2022"),
                        ],
                      ),
                    ),
                    Gap(4),
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: Color(0xFF525252),
                          ),
                          Gap(5),
                          Text("West Bengal , India"),
                        ],
                      ),
                    ),
                    Gap(4),
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.attach_money_outlined,
                            size: 20,
                            color: Color(0xFF525252),
                          ),
                          Gap(5),
                          Text("20.4K - 61.19K INR"),
                        ],
                      ),
                    ),
                    Gap(4),
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.mail_outline_outlined,
                            size: 20,
                            color: Color(0xFF525252),
                          ),
                          Gap(5),
                          Text("0 Proposals"),
                        ],
                      ),
                    ),
                    Gap(4)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
