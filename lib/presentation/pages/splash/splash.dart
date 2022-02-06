import 'dart:async';
import 'package:android_test_task/presentation/resources/assets-manager.dart';
import 'package:android_test_task/presentation/resources/color-manager.dart';
import 'package:android_test_task/presentation/resources/routes-manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashView extends StatefulWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer _timer;

  _startDelay() {
    _timer = Timer(Duration(seconds: 5), _goNext);
  }

  _goNext() async {
    // navigate to main screen
    Navigator.pushReplacementNamed(context, Routes.homeRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: SvgPicture.asset(
          ImageAssets.splashLogo,
        ),
      ),
    );
  }
}