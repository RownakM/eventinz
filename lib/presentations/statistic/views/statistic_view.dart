import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../app/widgets/app_bar_widget.dart';
import '../controllers/statistic_controller.dart';

class StatisticView extends GetView<StatisticController> {
  const StatisticView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBarWidget(
          onTap: () {},
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
