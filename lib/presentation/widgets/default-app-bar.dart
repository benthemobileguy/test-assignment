import 'package:android_test_task/presentation/resources/assets-manager.dart';
import 'package:flutter/material.dart';
class DefaultAppBar extends StatelessWidget {
  final bool showNavIcon;
  final Color backgroundColor;
  final Widget bottom;
  const DefaultAppBar({
    Key key,
    this.backgroundColor,
    this.showNavIcon,
    this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: new Image.asset(
         ImageAssets.appBarLogo,
          width: 134,
          height: 34,
        ),
        bottom: bottom,
        backgroundColor: backgroundColor);
  }
}