import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../config/app_colors.dart';

class InputTextField extends StatelessWidget {
  TextEditingController? controller;
  String? hint;
  bool obSecure;
  String show;
  int maxLine;
  TextInputType textInputType;
  InputTextField({
    Key? key,
    this.controller,
    this.textInputType = TextInputType.text,
    this.show = "no",
    this.maxLine = 1,
    required this.hint,
    this.obSecure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(primary: AppColors.kPrimary)),
      child: TextFormField(
        maxLines: maxLine,
        controller: controller,
        keyboardType: textInputType,
        obscureText: obSecure,
        decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(),
            suffixIcon:
                show == "yes" ? Icon(Icons.calendar_month_outlined) : null),
      ),
    );
  }
}

class InputSearchTextField extends StatelessWidget {
  //TextEditingController controller;
  String? hint;
  bool obSecure;
  String show;
  int maxLine;
  TextInputType textInputType;
  InputSearchTextField({
    Key? key,
    //  required this.controller,
    this.textInputType = TextInputType.text,
    this.show = "no",
    this.maxLine = 1,
    required this.hint,
    this.obSecure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(primary: AppColors.kPrimary)),
      child: TextFormField(
        cursorHeight: 0.0,
        showCursor: false,
        //cursorWidth: 0.1,
        style:
            TextStyle(fontWeight: FontWeight.w400, fontSize: 10, height: 3.4),
        maxLines: maxLine,
        // controller: controller,
        keyboardType: textInputType,
        obscureText: obSecure,
        decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(),
            suffixIcon:
                show == "yes" ? Icon(Icons.calendar_month_outlined) : null),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  String text;
  double fontSize;
  FontWeight fontWeight;
  Color color;
  TextAlign textAlign;
  TextWidget(
      {Key? key,
      required this.text,
      this.fontSize = 20,
      this.textAlign = TextAlign.start,
      this.fontWeight = FontWeight.w500,
      this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
              fontSize: fontSize, fontWeight: fontWeight, color: color),
        ));
  }
}
