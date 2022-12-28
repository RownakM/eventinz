import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:eventinz/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/Screens/Page_Screens/chat_page.dart';
import 'package:eventinz/Screens/Page_Screens/dashboard.dart';
import 'package:eventinz/Screens/Page_Screens/my_event.dart';
import 'package:eventinz/Screens/Page_Screens/support_page.dart';
import 'package:eventinz/Screens/Page_Screens/user_statistics.dart';
import 'package:eventinz/Services/http_service.dart';
import 'package:eventinz/custom_fonts/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class UserDashboardMain extends StatefulWidget {
  final userName;
  const UserDashboardMain({Key? key, required this.userName}) : super(key: key);
  @override
  _UserDashboardMainState createState() => _UserDashboardMainState();
}

class _UserDashboardMainState extends State<UserDashboardMain> {
  @override
  Widget build(BuildContext context) {
    // print(CustomHttpService().getRequest(
    //     "usersLogin/?email=christianadegbola@gmail.com&password=eventinz"));
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
          controller: PersistentTabController(initialIndex: 2),
          items: navBarItems(),
          navBarStyle: NavBarStyle.style6,
        ));
  }

  List<Widget> screens() {
    return [
      UserStatistics(),
      MyEvent(
        userName: widget.userName,
      ),
      Dashboard(
        userName: widget.userName,
      ),
      SupportPage(),
      ChatPage(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.bar_chart_outlined),
        title: "Statistics",
        textStyle: iconFont,
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: Colors.black45,
      ),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.calendar_month_outlined),
          title: "My Events",
          textStyle: iconFont,
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.black45),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.dashboard_outlined),
          title: "Dashboard",
          textStyle: iconFont,
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.black45),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.support),
          title: "Support",
          textStyle: iconFont,
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.black45),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.chat_outlined),
          title: "My Chats",
          textStyle: iconFont,
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.black45)
    ];
  }
}
