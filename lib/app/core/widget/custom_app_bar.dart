import 'package:Nascode/app/core/values/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '/app/core/values/app_colors.dart';
import '/app/core/widget/app_bar_title.dart';

//Default appbar customized with the design of our app
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitleText;
  final List<Widget>? actions;
  final bool isBackButtonEnabled;
  final SvgPicture? appBarImage; // New parameter for the image

  CustomAppBar({
    Key? key,
    required this.appBarTitleText,
    this.actions,
    this.appBarImage,
    this.isBackButtonEnabled = true,
  }) : super(key: key);

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBarColor,
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: isBackButtonEnabled,
      actions: actions,
      iconTheme: const IconThemeData(color: AppColors.appBarIconColor),
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: appBarImage != null
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          appBarImage != null
              ? Padding(
            padding: EdgeInsets.only(left: AppValues.padding),
            child: FittedBox(
              fit: BoxFit.contain, // Choose the fit mode you want
              child: appBarImage!,
            ),
          )
              : Container(),
          appBarImage != null
              ? SizedBox(height: 8.0) // Adjust spacing if needed
              : Container(),
          appBarImage != null
              ? Container() // Add any additional widgets or spacing as needed
              : AppBarTitle(text: appBarTitleText),
        ],
      ),
    );
  }
}

