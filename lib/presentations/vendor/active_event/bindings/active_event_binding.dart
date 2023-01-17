import 'package:get/get.dart';

import '../controllers/active_event_controller.dart';

class ActiveEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ActiveEventController>(
      () => ActiveEventController(),
    );
  }
}
