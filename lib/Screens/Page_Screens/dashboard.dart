import 'package:eventinz/Child_Screens/Dashboard_Body.dart';
import 'package:eventinz/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/custom_fonts/custom_fonts.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.white,
          elevation: 0,
          title: Text("Hii"),
          actions: [
            Container(
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
            )
          ],
          leading: IconButton(
            icon: Image.network(
                "https://eventinz.com/static/main_home1/assets/images/logo-footer.png"),
            onPressed: () {},
          ),
        ),
        body: DashboardBody());
  }
}
