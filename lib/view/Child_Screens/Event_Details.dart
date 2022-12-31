import 'package:eventinz/view/Child_Screens/Event_Details_Body.dart';
import 'package:eventinz/view/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/view/Screens/Page_Screens/chat_page.dart';
import 'package:eventinz/view/Screens/Page_Screens/dashboard.dart';
import 'package:eventinz/view/Screens/Page_Screens/my_event.dart';
import 'package:eventinz/view/Screens/Page_Screens/support_page.dart';
import 'package:eventinz/view/Screens/Page_Screens/user_statistics.dart';
import 'package:eventinz/view/custom_fonts/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          elevation: 0,
          actions: [
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  backgroundColor: primaryColor,
                  child: Text(
                    "R",
                    style: TextFont.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            )
          ],
          leading: IconButton(
            icon: Image.network(
                "https://eventinz.com/static/main_home1/assets/images/logo-footer.png"),
            onPressed: () {},
          ),
        ),
        body: PersistentTabView(
          context,
          screens: screens(),
          controller: PersistentTabController(initialIndex: 0),
          items: navBarItems(),
          navBarStyle: NavBarStyle.style6,
        ));
  }

  List<Widget> screens() {
    return [
      EventDetailsBody(),
      UserStatistics(),
      UserStatistics(),
      // SupportPage(),
      // ChatPage(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.info_outline),
        title: "Details",
        textStyle: iconFont,
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: Colors.black45,
      ),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.person_add),
          title: "Proposals",
          textStyle: iconFont,
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.black45),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.money),
          title: "Payments",
          textStyle: iconFont,
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.black45),
      // PersistentBottomNavBarItem(
      //     icon: const Icon(Icons.support),
      //     title: "Actions",
      //     textStyle: iconFont,
      //     activeColorPrimary: primaryColor,
      //     inactiveColorPrimary: Colors.black45),
      // PersistentBottomNavBarItem(
      //     icon: const Icon(Icons.chat_outlined),
      //     title: "My Chats",
      //     textStyle: iconFont,
      //     activeColorPrimary: primaryColor,
      //     inactiveColorPrimary: Colors.black45)
    ];
  }
}
