import 'dart:convert';

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:eventinz/view/Color_Scheme/eventinz_colors.dart';
import 'package:eventinz/view/Screens/user_dashboard_main.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:eventinz/storage/StorageItem.dart';
import 'package:http/http.dart' as http;

import 'package:eventinz/view/custom_fonts/custom_fonts.dart';
import 'package:eventinz/main.dart';

import 'package:flutter/material.dart';
// import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
// import 'package:session_next/session_next.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  // var storage = StorageService();
  var session = GetStorage();

  // Controllers
  String LoggedInId = "";
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

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
                  Gap(30),
                  Image.network(
                    "https://eventinz.com/static/main_home1/assets/images/logo-desktop.png",
                    width: 150,
                  ),
                  Gap(45),
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
                              controller: emailController,
                              cursorColor: Colors.black45,
                              cursorWidth: 1,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter Email";
                                } else {
                                  return null;
                                }
                              },
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
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter Password";
                                } else {
                                  return null;
                                }
                              },
                              controller: passWordController,
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
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    // print(emailController.text);
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Center(
                                              child: CircularProgressIndicator(
                                            backgroundColor: Colors.white,
                                            color: primaryColor,
                                          ));
                                        });
                                    userLogin(emailController.text,
                                        passWordController.text);
                                  }
                                  // Show Dialog
                                },
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

  void userLogin(String Username, String Password) async {
    var url =
        "https://api.eventinz.com/checkUsers/?email=${Username}&password=${Password}";
    print(url);
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.statusCode.toString();
    debugPrint("Creating Username");
    // await storage.writeSecureData(StorageItem('KEY_USERNAME', Username));
    // await storage.writeSecureData(StorageItem('KEY_PASSWORD', Password));
    // session.set('KEY_USERNAME', Username);
    // session.set('KEY_PASSWORD', Password);
    // session.start(sessionTimeOut: 20, onExpire: () {});

    session.write('KEY_USERNAME', Username);
    session.write('KEY_PASSWORD', Password);

    debugPrint("Done Created...");

    print(body);

    if (body == "202") {
      setState(() {
        LoggedInId = Username;
        debugPrint(LoggedInId);
        debugPrint(session.read('KEY_USERNAME'));
        PersistentNavBarNavigator.pushNewScreen(context,
            screen: UserDashboardMain(
              userName: Username,
            ),
            withNavBar: false,
            pageTransitionAnimation: PageTransitionAnimation.rotate);
      });
    } else {
      setState(() {
        LoggedInId = "";
        PersistentNavBarNavigator.pushNewScreen(context,
            screen: Start(), withNavBar: false);
      });
    }
  }
}
