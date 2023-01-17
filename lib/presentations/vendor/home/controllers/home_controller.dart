import 'package:get/get.dart';

import '../../active_event/views/active_event_view.dart';
import '../../event_transactions/views/event_transactions_view.dart';
import '../../packages/views/pakages_view.dart';
import '../../quote_request/views/quote_request_view.dart';
import '../../vendor_dashboard/views/vendor_dashboard_view.dart';

class HomeController extends GetxController {
  var currentIndex = 2.obs;

  final pages = [
    ActiveEventView(),
    QuoteRequestView(),
    VendorDashboardView(),
    PackagesView(),
    EventTransactionsView(),
  ];

  @override
  void onInit() {
    super.onInit();
  }
}
