import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eventinz/view/Child_Screens/Dashboard_Body.dart';
import 'package:eventinz/view/Color_Scheme/eventinz_colors.dart';

import 'package:eventinz/view/custom_fonts/custom_fonts.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Dashboard extends StatelessWidget {
  final userName;
  const Dashboard({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: DashboardBody(userName: userName));
  }
}
