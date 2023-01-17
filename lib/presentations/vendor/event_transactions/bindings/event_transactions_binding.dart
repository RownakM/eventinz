import 'package:get/get.dart';

import '../controllers/event_transactions_controller.dart';

class EventTransactionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventTransactionsController>(
      () => EventTransactionsController(),
    );
  }
}
