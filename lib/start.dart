import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:eventinz/Color_Scheme/eventinz_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorfulSafeArea(
          color: primaryColor,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                //decoration: BoxDecoration(color: Colors.red),
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/splash_screen_bg.png")),
              ),
              //
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign In",
                    style: GoogleFonts.roboto(),
                  )
                ],
              )
            ],
          )),
    );
  }
}
