import 'package:android_test_task/presentation/resources/color-manager.dart';
import 'package:android_test_task/presentation/resources/styles-manager.dart';
import 'package:android_test_task/presentation/resources/values-manager.dart';
import 'package:flutter/material.dart';
class StatItem extends StatelessWidget {
  const StatItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Height",
          style: getSemiBoldStyle(color: ColorManager.lightGrey),
        ),
        SizedBox(
          height: AppSize.s10,
        ),
        Text(
          "69",
          style: titleTextStyleNormal(color: ColorManager.textColor),
        ),
      ],
    );
  }
}