import 'dart:convert';

import 'package:eventinz/Color_Scheme/eventinz_colors.dart';
import 'package:flutter/material.dart';
import 'package:eventinz/Event_Card_Packs/Quote_Request_Card.dart';
import 'package:gap/gap.dart';

import 'package:eventinz/custom_fonts/custom_fonts.dart';
import 'package:eventinz/Event_Card_Packs/event_cards_index.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class MyEvent extends StatefulWidget {
  final userName;
  const MyEvent({Key? key, required this.userName}) : super(key: key);

  @override
  State<MyEvent> createState() => _MyEventState();
}

class _MyEventState extends State<MyEvent> {
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
    debugPrint("PRINTPRINTPRINTPRINTPRINTPRINTPRINTPRINTPRINTPRINT");
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: RefreshIndicator(
          color: primaryColor,
          onRefresh: () async {
            makeRequestUsingHttp(widget.userName);
          },
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
              : ListView(
                  children: [
                    ListView.builder(
                        itemCount: 1,
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  "Events",
                                  style: TitleFont.copyWith(fontSize: 23),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Gap(10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                              Container(
                                // width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                // color: Colors.red,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 15),
                                        // minimumSize: const Size.fromHeight(50),
                                        backgroundColor: secondaryColor),
                                    onPressed: () {},
                                    child: Text("Show Archieved Events")),
                              )
                            ],
                          );
                        })
                  ],
                )),
    );
  }
}
