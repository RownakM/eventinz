import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:eventinz/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/Screens/Page_Screens/chat_page.dart';
import 'package:eventinz/Screens/Page_Screens/dashboard.dart';
import 'package:eventinz/Screens/Page_Screens/my_event.dart';
import 'package:eventinz/Screens/Page_Screens/support_page.dart';
import 'package:eventinz/Screens/Page_Screens/user_statistics.dart';
import 'package:eventinz/custom_fonts/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class UserDashboardMain extends StatefulWidget {
  const UserDashboardMain({Key? key}) : super(key: key);

  @override
  _UserDashboardMainState createState() => _UserDashboardMainState();
}

class _UserDashboardMainState extends State<UserDashboardMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: ColorfulSafeArea(
            color: primaryColor,
            child: PersistentTabView(
              context,
              screens: screens(),
              controller: PersistentTabController(initialIndex: 2),
              items: navBarItems(),
              navBarStyle: NavBarStyle.style6,
            )));
  }

  List<Widget> screens() {
    return [
      UserStatistics(),
      MyEvent(),
      Dashboard(),
      SupportPage(),
      ChatPage(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarItems() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(Ionicons.stats_chart),
          title: "Statistics",
          textStyle: iconFont,
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.black45),
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
