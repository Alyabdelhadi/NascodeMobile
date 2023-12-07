import 'package:get/get.dart';

import '/app/modules/menu/bindings/menu_binding.dart';
import '/app/modules/menu/views/menu_view.dart';
import '/app/modules/home/bindings/home_binding.dart';
import '/app/modules/home/views/home_view.dart';
import '/app/modules/main/bindings/main_binding.dart';
import '/app/modules/main/views/main_view.dart';
import '/app/modules/news/bindings/news_binding.dart';
import '/app/modules/news/views/news_view.dart';

import '/app/modules/tasks/bindings/tasks_binding.dart';
import '/app/modules/tasks/views/tasks_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.News,
      page: () => NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.Menu,
      page: () => MenuView(),
      binding: MenuBinding(),
    ),


  ];
}
