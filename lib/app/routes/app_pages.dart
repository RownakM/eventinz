import 'package:get/get.dart';

import '../../presentations/auth/bindings/auth_binding.dart';
import '../../presentations/auth/views/login_view.dart';
import '../../presentations/chats/bindings/chats_binding.dart';
import '../../presentations/chats/views/chats_view.dart';
import '../../presentations/create_event/bindings/create_event_binding.dart';
import '../../presentations/create_event/views/create_event_view.dart';
import '../../presentations/dashboard/bindings/dashboard_binding.dart';
import '../../presentations/dashboard/views/dashboard_view.dart';
import '../../presentations/events/bindings/events_binding.dart';
import '../../presentations/events/views/events_view.dart';
import '../../presentations/main/bindings/main_binding.dart';
import '../../presentations/main/views/main_view.dart';
import '../../presentations/splash/bindings/splash_binding.dart';
import '../../presentations/splash/views/splash_view.dart';
import '../../presentations/statistic/bindings/statistic_binding.dart';
import '../../presentations/statistic/views/statistic_view.dart';
import '../../presentations/support/bindings/support_binding.dart';
import '../../presentations/support/views/support_view.dart';
import '../../presentations/vendor/active_event/bindings/active_event_binding.dart';
import '../../presentations/vendor/active_event/views/active_event_view.dart';
import '../../presentations/vendor/event_transactions/bindings/event_transactions_binding.dart';
import '../../presentations/vendor/event_transactions/views/event_transactions_view.dart';
import '../../presentations/vendor/gallery/bindings/gallery_binding.dart';
import '../../presentations/vendor/gallery/views/gallery_view.dart';
import '../../presentations/vendor/home/bindings/home_binding.dart';
import '../../presentations/vendor/home/views/home_view.dart';
import '../../presentations/vendor/my_proposal/bindings/my_proposal_binding.dart';
import '../../presentations/vendor/my_proposal/views/my_proposal_view.dart';
import '../../presentations/vendor/packages/bindings/pakages_binding.dart';
import '../../presentations/vendor/packages/views/pakages_view.dart';
import '../../presentations/vendor/profile/bindings/profile_binding.dart';
import '../../presentations/vendor/profile/views/profile_view.dart';
import '../../presentations/vendor/quote_request/bindings/quote_request_binding.dart';
import '../../presentations/vendor/quote_request/views/quote_request_view.dart';
import '../../presentations/vendor/vendor_dashboard/bindings/vendor_dashboard_binding.dart';
import '../../presentations/vendor/vendor_dashboard/views/vendor_dashboard_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.STATISTIC,
      page: () => const StatisticView(),
      binding: StatisticBinding(),
    ),
    GetPage(
      name: _Paths.EVENTS,
      page: () => const EventsView(),
      binding: EventsBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.SUPPORT,
      page: () => const SupportView(),
      binding: SupportBinding(),
    ),
    GetPage(
      name: _Paths.CHATS,
      page: () => const ChatsView(),
      binding: ChatsBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_EVENT,
      page: () => CreateEventView(),
      binding: CreateEventBinding(),
    ),
    GetPage(
      name: _Paths.ACTIVE_EVENT,
      page: () => const ActiveEventView(),
      binding: ActiveEventBinding(),
    ),
    GetPage(
      name: _Paths.QUOTE_REQUEST,
      page: () => const QuoteRequestView(),
      binding: QuoteRequestBinding(),
    ),
    GetPage(
      name: _Paths.VENDOR_DASHBOARD,
      page: () => const VendorDashboardView(),
      binding: VendorDashboardBinding(),
    ),
    GetPage(
      name: _Paths.PAKAGES,
      page: () => const PackagesView(),
      binding: PakagesBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_TRANSACTIONS,
      page: () => const EventTransactionsView(),
      binding: EventTransactionsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.GALLERY,
      page: () => const GalleryView(),
      binding: GalleryBinding(),
    ),
    GetPage(
      name: _Paths.MY_PROPOSAL,
      page: () => const MyProposalView(),
      binding: MyProposalBinding(),
    ),
  ];
}
