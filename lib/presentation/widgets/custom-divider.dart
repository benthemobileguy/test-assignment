import 'package:flutter/material.dart';
class CustomDivider extends StatelessWidget {
  final double height;
  CustomDivider({

    Key key, this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.grey.withOpacity(0.2), height: height);
  }
}