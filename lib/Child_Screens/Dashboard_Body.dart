import 'package:flutter/material.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Text("Hi"),
          top: 10,
          right: 40,
          bottom: 50,
        )
      ],
    );
  }
}
