import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:eventinz/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/custom_fonts/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  Gap(105),
                  Text(
                    "Sign In",
                    style: TitleFont,
                  ),
                  Gap(40),
                  Expanded(
                    child: Container(
                      // color: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              cursorColor: Colors.black45,
                              cursorWidth: 1,
                              decoration: const InputDecoration(
                                  hintText: "Email",
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black45)),
                                  border: OutlineInputBorder(),
                                  focusColor: Colors.black45,
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black45, width: 1))),
                            ),
                            Gap(10),
                            TextFormField(
                              cursorWidth: 1,
                              cursorColor: Colors.black45,
                              obscureText: true,
                              decoration: const InputDecoration(
                                  hintText: "Password",
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black45)),
                                  border: OutlineInputBorder(),
                                  focusColor: Colors.black45,
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black45, width: 1))),
                            ),
                            Gap(5),
                            Center(
                              child: Container(
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: primaryColor,
                                  ),
                                  child: Text(
                                    "Forgot Password?",
                                    style: regular,
                                  ),
                                  onPressed: () {},
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            ),
                            Gap(90),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size.fromHeight(50),
                                    backgroundColor: primaryColor),
                                onPressed: () {},
                                child: Text(
                                  "Login",
                                  style: regular.copyWith(fontSize: 16),
                                ))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
