import 'dart:async';

import 'package:eventing/presentations/auth/views/login_view.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 8)).then((value) {
      Get.offAll(() => LoginView());
    });

    super.onInit();
  }
}
