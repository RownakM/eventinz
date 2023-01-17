import 'package:get/get.dart';

import '../../chats/views/chats_view.dart';
import '../../dashboard/views/dashboard_view.dart';
import '../../events/views/events_view.dart';
import '../../statistic/views/statistic_view.dart';
import '../../support/views/support_view.dart';

class MainController extends GetxController {
  var currentIndex = 2.obs;
  final pages = [
    StatisticView(),
    EventsView(),
    DashboardView(),
    SupportView(),
    ChatsView(),
  ];
  @override
  void onInit() {
    super.onInit();
  }
}
