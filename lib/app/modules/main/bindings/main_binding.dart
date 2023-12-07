import 'package:get/get.dart';

import '/app/modules/menu/controllers/menu_controller.dart';
import '/app/modules/home/controllers/home_controller.dart';
import '/app/modules/main/controllers/main_controller.dart';
import '/app/modules/news/controllers/news_controller.dart';
import '/app/modules/tasks/controllers/tasks_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
      fenix: true,
    );
    Get.lazyPut<MenusController>(
      () => MenusController(),
      fenix: true,
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
    Get.lazyPut<TasksController>(
      () => TasksController(),
    );
    Get.lazyPut<NewsController>(
      () => NewsController(),
    );
  }
}
