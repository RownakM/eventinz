import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:eventinz/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/custom_fonts/custom_fonts.dart';
import 'package:flutter/material.dart';
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
              items: navBarItems(),
              navBarStyle: NavBarStyle.style13,
            )));
  }

  List<Widget> screens() {
    return [
      HomePage(),
      ChatPage(),
      ChatPage(),
      ChatPage(),
      ChatPage(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarItems() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(Ionicons.stats_chart),
          title: "User Statistics",
          textStyle: TextFont,
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.black45),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.calendar_month_outlined),
          title: "My Events",
          textStyle: TextFont,
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.black45),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.dashboard_outlined),
          title: "Dashboard",
          textStyle: TextFont,
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.black45),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.support),
          title: "Support",
          textStyle: TextFont,
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.black45),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.chat_outlined),
          title: "My Chats",
          textStyle: TextFont,
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.black45)
    ];
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
