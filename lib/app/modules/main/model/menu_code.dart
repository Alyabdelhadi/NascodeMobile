import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:Nascode/app/modules/main/model/menu_item.dart';

enum MenuCode { HOME, TASKS, NEWS,MENU}

extension MenuCodeExtensions on MenuCode {
  BottomNavItem toBottomNavItem(AppLocalizations appLocalization) {
    switch (this) {
      case MenuCode.HOME:
        return BottomNavItem(

          iconSvgName: "logo.svg",
          menuCode: MenuCode.HOME,
        );
      case MenuCode.TASKS:
        return BottomNavItem(

            iconSvgName: "list.svg",
            menuCode: MenuCode.TASKS);
      case MenuCode.NEWS:
        return BottomNavItem(

            iconSvgName: "news.svg",
            menuCode: MenuCode.NEWS);
      case MenuCode.MENU:
        return BottomNavItem(
            iconSvgName: "menu.svg",
            menuCode: MenuCode.MENU);


    }
  }
}
