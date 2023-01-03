import 'dart:convert';

import 'package:eventinz/ENV_VARIABLES/environment_variables.dart';
import 'package:eventinz/view/Child_Screens/footer.dart';
import 'package:eventinz/view/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/view/Event_Card_Packs/Event_Card_MyEvents.dart';
import 'package:flutter/material.dart';
import 'package:eventinz/view/Event_Card_Packs/Quote_Request_Card.dart';
import 'package:gap/gap.dart';

import 'package:eventinz/view/custom_fonts/custom_fonts.dart';
import 'package:eventinz/view/Event_Card_Packs/event_cards_index.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:eventinz/view/Child_Screens/Event_Details.dart';

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
  List<dynamic> EventList = [];
  List<dynamic> VendorCategory = [];
  List<dynamic> HeadsList = [];

  final session = GetStorage();
  String GetVendorCategory(String id) {
    var name = '';
    print("ID");
    print(id);
    print("ID");

    for (var i = 0; i < VendorCategory.length; i++) {
      // print(VendorCategory[i]['id']);
      debugPrint(VendorCategory[i]['id'].toString());
      if (VendorCategory[i]['id'].toString() == id) {
        name = VendorCategory[i]['category_name'];
        break;
      } else {
        continue;
      }
    }
    return name;
  }

  String GetHeads(String id) {
    var name = '';
    print("ID");
    print(id);
    print("ID");

    for (var i = 0; i < HeadsList.length; i++) {
      print(HeadsList[i]['id']);
      if (HeadsList[i]['id'].toString() == id) {
        name = HeadsList[i]['Minimum_Value'].toString() +
            '-' +
            HeadsList[i]['Maximum_Value'].toString();
        break;
      } else {
        continue;
      }
    }
    return name;
  }

  void makeRequestUsingHttp(String Username) async {
    // debugPrint("PRINTPRINTPRINTPRINTPRINTPRINTPRINTPRINTPRINTPRINT");
    var url = hostURL + "/userData/?email=${Username}&password=eventinz";
    var uri = Uri.parse(url);
    final response = await http.get(uri);
    debugPrint(url);
    final body = response.body;
    final json = jsonDecode(body);

    var eventDataURL = hostURL + "/eventData/?email=${Username}";
    uri = Uri.parse(eventDataURL);
    final eventDataResponse = await http.get(uri);
    final eventDataResponseBody = eventDataResponse.body;
    final eventDataResponseJSON = jsonDecode(eventDataResponseBody);
    print("NEW OUTPUT HERE");
    print(eventDataResponseBody);
    // // print(json);
    // print(json['quote']);

    // var quoteUrl = "";
    // final Quote_Uri = Uri.parse(quoteUrl);
    // final quote_response = await http.get(Quote_Uri);
    // final quote_body = quote_response.body;

    // final quote_json = jsonDecode(quote_body);

    Future.delayed(const Duration(seconds: 2), (() {
      setState(() {
        _isLoading = false;
        _isRequestQuote = false;
        // Quotes = json["quote"];
        EventData = json['event_data'];
        EventList = eventDataResponseJSON['event_data'];
        users = eventDataResponseJSON['data'];
        VendorCategory = eventDataResponseJSON['vendor_category'];
        HeadsList = eventDataResponseJSON['heads'];
        // FName = json['data'][0]['fname'];
        // LName = json['data'][0]['lname'][0];
        // String date = json['data'][0]['created_on'];
        // DateTime formattedate = DateTime.parse(date);
        // MemberSince = DateFormat("dd-MM-yyyy").format(formattedate);
        // AboutMe = json['data'][0]['aboutme'];
        // userLocation = json['data'][0]['country'];
        // ImageURL =
        //     "https://eventinz.com/media/" + json['data'][0]['profile_image'];
      });
    }));

    print(FName);
  }

  String GetVendorCompanyName(String VendorID) {
    var url = hostURL + "/companyName/?id=${VendorID}";
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
      // color: Colors.white,
      // padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                          itemCount: 1,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 8),
                              child: Container(
                                color: Colors.transparent,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0, vertical: 6),
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
                                          Count: EventData[0]
                                                  ['total_event_count']
                                              .toString(),
                                          ColorCode: primaryColor,
                                        ),
                                        EventCardsIndex(
                                          text: "OnGoing Events",
                                          Count: EventData[0]
                                                  ['ongoing_event_count']
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
                                          Count: EventData[0]
                                                  ['cancel_event_count']
                                              .toString(),
                                          ColorCode: GreenColor,
                                        ),
                                        EventCardsIndex(
                                          text: "Archieved Events",
                                          Count: EventData[0]
                                                  ['cancel_event_count']
                                              .toString(),
                                          ColorCode: primaryColor,
                                        ),
                                      ],
                                    ),
                                    EventList.isEmpty
                                        ? Container()
                                        : Container(
                                            // width: MediaQuery.of(context).size.width,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 4),
                                            // color: Colors.red,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 15),
                                                    // minimumSize: const Size.fromHeight(50),
                                                    backgroundColor:
                                                        secondaryColor),
                                                onPressed: () {},
                                                child: Text(
                                                    "Show Archieved Events")),
                                          ),
                                    Gap(20),
                                    EventList.isEmpty
                                        ? Container()
                                        : ListView.builder(
                                            scrollDirection: Axis.vertical,
                                            shrinkWrap: true,
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount: EventList.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Container(
                                                padding: EdgeInsets.all(4),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    // GetVendorCategory("12");
                                                    PersistentNavBarNavigator.pushNewScreen(
                                                        context,
                                                        screen: EventDetails(
                                                            event_type: EventList[index]
                                                                    ['ev_name']
                                                                .toString(),
                                                            first_name: users[0]
                                                                ['fname'],
                                                            last_name: users[0]
                                                                ['lname'],
                                                            event_desc:
                                                                EventList[index]['Event_Desc']
                                                                    .toString(),
                                                            event_date:
                                                                EventList[index]
                                                                        ['DOE']
                                                                    .toString(),
                                                            created_on:
                                                                EventList[index]['created_on']
                                                                    .toString(),
                                                            vendor_type:
                                                                GetVendorCategory(EventList[index]['vendor_type']),
                                                            heads: GetHeads(EventList[index]['Heads'])),
                                                        withNavBar: false,
                                                        pageTransitionAnimation: PageTransitionAnimation.cupertino);
                                                  },
                                                  child: EventCardMyEvents(
                                                      money: EventList[index]['Budget']['Minimum_Value']
                                                              .toString() +
                                                          ' - ' +
                                                          EventList[index]['Budget']['Maximum_Value']
                                                              .toString(),
                                                      event_id: EventList[index]
                                                              ['id']
                                                          .toString(),
                                                      VendorID: EventList[index]
                                                              ['ev_name']
                                                          .toString(),
                                                      Message:
                                                          "${EventList[index]['Event_Desc']}",
                                                      event_type: GetVendorCategory(
                                                          EventList[index]
                                                              ['vendor_type']),
                                                      status: EventList[index]
                                                              ['status']
                                                          .toString()
                                                          .toUpperCase(),
                                                      number_of_guest: "number_of_guest",
                                                      Quote_Date: "${EventList[index]['DOE']}",
                                                      created_at: "2"),
                                                ),
                                              );
                                            },
                                          ),
                                    // Text("Hello"),
                                  ],
                                ),
                              ),
                            );
                          }),
                      Footer(),
                      Gap(30)
                    ],
                  ),
                )),
    );
  }
}
