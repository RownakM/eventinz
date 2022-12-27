import 'dart:convert';
import 'package:eventinz/Event_Card_Packs/Quote_Request_Card.dart';
import 'package:intl/intl.dart';

import 'package:eventinz/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/Event_Card_Packs/event_cards_index.dart';
import 'package:eventinz/Services/get.dart';
import 'package:http/http.dart' as http;

import 'package:eventinz/custom_fonts/custom_fonts.dart';

import 'package:eventinz/start.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:gap/gap.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
// import 'package:session_next/session_next.dart';
import 'package:get_storage/get_storage.dart';

class DashboardBody extends StatefulWidget {
  final userName;
  const DashboardBody({Key? key, required this.userName}) : super(key: key);

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  bool _isLoading = true;

  bool _isRequestQuote = true;
  var token = '';
  var ImageURL =
      'https://eventinz.com/static/main_home1/assets/images/logo-footer.png';
  var FName = '';
  var LName = '';
  String MemberSince = '';
  String AboutMe = "Add 'About Me' to show up here";
  String userLocation = '';
  final box = GetStorage();

  List<dynamic> users = [];
  List<dynamic> Quotes = [];
  List<dynamic> EventData = [];
  final session = GetStorage();
  void makeRequestUsingHttp(String Username) async {
    var url =
        "http://18.135.170.140/userData/?email=${Username}&password=eventinz";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    debugPrint(url);
    final body = response.body;
    final json = jsonDecode(body);
    // print(json);
    print(json['quote']);

    // var quoteUrl = "";
    // final Quote_Uri = Uri.parse(quoteUrl);
    // final quote_response = await http.get(Quote_Uri);
    // final quote_body = quote_response.body;

    // final quote_json = jsonDecode(quote_body);

    Future.delayed(const Duration(seconds: 2), (() {
      setState(() {
        _isLoading = false;
        _isRequestQuote = false;
        Quotes = json["quote"];
        EventData = json['event_data'];
        FName = json['data'][0]['fname'];
        LName = json['data'][0]['lname'][0];
        String date = json['data'][0]['created_on'];
        DateTime formattedate = DateTime.parse(date);
        MemberSince = DateFormat("dd-MM-yyyy").format(formattedate);
        AboutMe = json['data'][0]['aboutme'];
        userLocation = json['data'][0]['country'];
        ImageURL =
            "https://eventinz.com/media/" + json['data'][0]['profile_image'];
      });
    }));

    print(FName);
  }

  String GetVendorCompanyName(String VendorID) {
    var url = "http://18.135.170.140/companyName/?id=${VendorID}";
    final uri = Uri.parse(url);
    final body = '';
    final response = http.get(uri).then((value) => body == value.body);
    print("Company Name");
    print(body);
    return "";
  }

  @override
  Widget build(BuildContext context) {
    makeRequestUsingHttp(widget.userName);
    // GetVendorCompanyName("595");
    return RefreshIndicator(
      onRefresh: () async {
        makeRequestUsingHttp(widget.userName);
      },
      color: primaryColor,
      child: _isLoading
          ? Center(
              child: Container(
                child: const Center(
                  child: CircularProgressIndicator(
                    color: Color.fromRGBO(159, 0, 126, 1),
                  ),
                ),
              ),
            )
          : ListView(children: [
              Container(
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
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 25.0),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          alignment: Alignment.center,
                                          color: Colors.transparent,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              // Text(
                                              //   FName + ' ' + LName,
                                              //   style: Heading.copyWith(
                                              //       color: Colors.white,
                                              //       fontWeight: FontWeight.w500,
                                              //       fontSize: 17),
                                              //   textAlign: TextAlign.center,
                                              // ),
                                              TextButton(
                                                  onPressed: () {
                                                    makeRequestUsingHttp(
                                                        widget.userName);
                                                  },
                                                  style: TextButton.styleFrom(
                                                      shadowColor: Colors.white,
                                                      // padding: EdgeInsets.all(2),
                                                      side: BorderSide(
                                                          color: Colors.white,
                                                          width: 0.4),
                                                      surfaceTintColor:
                                                          Colors.white),
                                                  child: Text(
                                                    "Edit Profile",
                                                    style: Heading.copyWith(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w300,
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: Color(0xFF525252),
                                          ),
                                          Gap(5),
                                          Text(
                                            // session.read('KEY_PASSWORD'),
                                            FName + ' ' + LName,
                                            style: Heading.copyWith(
                                                fontSize: 19,
                                                fontWeight: FontWeight.w700),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Member Since :",
                                                style: textCondense.copyWith(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text("${MemberSince}")
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

                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.network(
                                ImageURL,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                    Gap(10),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              // offset: Offset(0, 0),
                              spreadRadius: -8,
                              blurRadius: 20,
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      // color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
                            "${AboutMe}",
                            style: textLight.copyWith(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                    ),
                    Gap(15),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              // offset: Offset(0, 0),
                              spreadRadius: -8,
                              blurRadius: 20,
                              color: Color.fromARGB(51, 182, 152, 152),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      // color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Quote Request (" +
                                    Quotes.length.toString() +
                                    ")",
                                style: TitleFont.copyWith(fontSize: 23),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  shadowColor: primaryColor,
                                  surfaceTintColor: primaryColor,
                                ),
                                child: Quotes.isEmpty
                                    ? Container()
                                    : Text(
                                        "View All",
                                        style: TextFont.copyWith(
                                            color: primaryColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                onPressed: () {},
                              )
                            ],
                          ),
                          Gap(10),
                          // Text(
                          //   "No Quote Request Found",
                          //   style: textLight.copyWith(
                          //       fontSize: 14, fontWeight: FontWeight.normal),
                          // )
                          // QuoteRequestCard(),
                          // QuoteRequestCard(),
                          // QuoteRequestCard(),

                          Quotes.isEmpty
                              ? Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "No Quote Request Found...",
                                    style: TextFont.copyWith(
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal),
                                  ),
                                )
                              : ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4),
                                      child: QuoteRequestCard(
                                        VendorID: Quotes[index]["vendor_id"]
                                                ['company_name']
                                            .toString(),
                                        Message: Quotes[index]["msg"],
                                        event_type: Quotes[index]['event_type'],
                                        status: Quotes[index]['status'],
                                        number_of_guest: Quotes[index]
                                            ['no_of_guests'],
                                        Quote_Date: Quotes[index]['appx_date'],
                                        created_at: Quotes[index]['created_on'],
                                      ),
                                    );
                                  },
                                  itemCount: Quotes.length,
                                )
                        ],
                      ),
                    ),
                    Gap(10),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              // offset: Offset(0, 0),
                              spreadRadius: -8,
                              blurRadius: 20,
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      // color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      alignment: Alignment.centerLeft,
                      child: ListView.builder(
                        itemCount: 1,
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
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
                                    Count: EventData[0]['total_event_count']
                                        .toString(),
                                    ColorCode: primaryColor,
                                  ),
                                  EventCardsIndex(
                                    text: "OnGoing Events",
                                    Count: EventData[0]['ongoing_event_count']
                                        .toString(),
                                    ColorCode: secondaryColor,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  EventCardsIndex(
                                    text: "Cancelled Events",
                                    Count: EventData[0]['cancel_event_count']
                                        .toString(),
                                    ColorCode: GreenColor,
                                  ),
                                  EventCardsIndex(
                                    text: "Archieved Events",
                                    Count: EventData[0]['cancel_event_count']
                                        .toString(),
                                    ColorCode: primaryColor,
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Gap(30),
                    Center(
                      child: Container(
                          child: Image.network(
                        "https://eventinz.com/static/main_home1/assets/images/logo-desktop.png",
                        color: Color.fromRGBO(255, 255, 255, 0.2),
                        width: 120,
                        colorBlendMode: BlendMode.modulate,
                      )),
                    ),
                    Gap(10),
                    Center(
                      child: Container(
                          child: Text(
                        "© Eventinz - ITTIQ | Canada",
                        style: Heading.copyWith(
                            color: Color.fromRGBO(0, 0, 0, 0.2),
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    Gap(30)
                  ],
                ),
              ),
            ]),
    );
  }

  // Future<String> userName(String path) async {
  //   return "your data from file";
  // }

}
