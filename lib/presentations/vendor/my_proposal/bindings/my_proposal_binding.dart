import 'package:get/get.dart';

import '../controllers/my_proposal_controller.dart';

class MyProposalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyProposalController>(
      () => MyProposalController(),
    );
  }
}
