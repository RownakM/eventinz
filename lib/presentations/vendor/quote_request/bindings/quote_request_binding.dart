import 'package:get/get.dart';

import '../controllers/quote_request_controller.dart';

class QuoteRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuoteRequestController>(
      () => QuoteRequestController(),
    );
  }
}
