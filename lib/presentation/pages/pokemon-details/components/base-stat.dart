import 'package:android_test_task/presentation/resources/color-manager.dart';
import 'package:android_test_task/presentation/resources/styles-manager.dart';
import 'package:android_test_task/presentation/resources/values-manager.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class BaseStat extends StatelessWidget {
  const BaseStat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.white,
      padding: EdgeInsets.symmetric(
          vertical: AppPadding.p8,
          horizontal: AppPadding.p16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Hp",
                style: titleTextStyleNormal(color: ColorManager.lightGrey),
              ),
              SizedBox(
                width: AppPadding.p4,
              ),
              Text(
                "20",
                style: titleTextStyleNormal(color: ColorManager.textColor),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: AppMargin.m10),
            child: new LinearPercentIndicator(
              padding: EdgeInsets.zero,
              barRadius: Radius.circular(AppSize.s30),
              lineHeight: 5.0,
              percent: 0.5,
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
          ),

        ],
      ),
    );
  }
}