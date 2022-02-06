import 'package:android_test_task/presentation/resources/color-manager.dart';
import 'package:android_test_task/presentation/resources/styles-manager.dart';
import 'package:android_test_task/presentation/resources/values-manager.dart';
import 'package:flutter/material.dart';


class CustomFlexibleAppBar extends StatelessWidget {


  Widget build(BuildContext context) {
    return new Container(

      height: AppSize.s200,
      child: Stack(
        children: [
          Container(
            padding: new EdgeInsets.only(top: 100, bottom: 20,
                left: AppSize.s16,
                right: AppSize.s16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment:Alignment.topLeft,
                  child: Text(
                    "Bulbasaur",
                    style: largeTextStyle(color: ColorManager.black),
                  ),
                ),
                Align(
                  alignment:Alignment.topLeft,
                  child: Text(
                    "Grass, Poison",
                    style: subTextStyle(color: ColorManager.textColor),
                  ),
                ),
                Spacer(),
                Align(
                  alignment:Alignment.bottomLeft,
                  child: Text(
                    "#001",
                    style: subTextStyle(color: ColorManager.textColor),
                  ),
                ),
              ],),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Image.asset(
                "assets/images/sample.png",
                width:150,
                height:150
            ),
          ),
        ],
      ),
      decoration: new BoxDecoration(
        color: ColorManager.lightGreen,
      ),
    );
  }
}