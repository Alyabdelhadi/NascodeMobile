import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/core/base/base_view.dart';
import '/app/modules/menu/views/menu_view.dart';
import '/app/modules/home/views/home_view.dart';
import '/app/modules/main/controllers/main_controller.dart';
import '/app/modules/main/model/menu_code.dart';
import '/app/modules/main/views/bottom_nav_bar.dart';
import '/app/modules/news/views/news_view.dart';
import '/app/modules/tasks/views/tasks_view.dart';

// ignore: must_be_immutable
class MainView extends BaseView<MainController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return Container(
      key: UniqueKey(),
      child: Obx(
        () => getPageOnSelectedMenu(controller.selectedMenuCode),
      ),
    );
  }

  @override
  Widget? bottomNavigationBar() {
    return BottomNavBar(onItemSelected: controller.onMenuSelected);
  }

  final HomeView homeView = HomeView();
  MenuView? menuView;
  TasksView? tasksView;
  NewsView? newsView;

  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    switch (menuCode) {
      case MenuCode.HOME:
        return homeView;
      case MenuCode.MENU:
        menuView ??= MenuView();
        return menuView!;
      case MenuCode.TASKS:
        tasksView ??= TasksView();
        return tasksView!;
      case MenuCode.NEWS:
        newsView ??= NewsView();
        return newsView!;

    }
  }
}
