import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../custom_fonts/custom_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Center(
        child: Container(
            child: Image.network(
          "https://eventinz.com/static/main_home1/assets/images/logo-desktop.png",
          color: Color.fromRGBO(255, 255, 255, 0.2),
          width: 120,
          colorBlendMode: BlendMode.modulate,
        )),
      ),
      Gap(10),
      Center(
        child: Container(
            child: Text(
          "© Eventinz - ITTIQ | Canada",
          style: Heading.copyWith(
              color: Color.fromRGBO(0, 0, 0, 0.2), fontWeight: FontWeight.bold),
        )),
      ),
    ]));
  }
}
