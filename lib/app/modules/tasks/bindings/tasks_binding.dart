import 'package:get/get.dart';

import '/app/modules/tasks/controllers/tasks_controller.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TasksController>(
      () => TasksController(),
    );
  }
}
