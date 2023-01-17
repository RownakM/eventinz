import 'package:get/get.dart';

import '../controllers/pakages_controller.dart';

class PakagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PakagesController>(
      () => PakagesController(),
    );
  }
}
