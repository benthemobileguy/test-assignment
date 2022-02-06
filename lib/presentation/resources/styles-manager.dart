import 'package:android_test_task/presentation/resources/font-manager.dart';
import 'package:flutter/material.dart';


TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12,  Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
}
// light text style

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.light, color);
}
TextStyle tabTextStyle(
    {double fontSize = FontSize.s16, Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
}
TextStyle subTextStyle(
    {double fontSize = FontSize.s16, Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
}
TextStyle smallTextStyle(
    {double fontSize = FontSize.s12, Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
}
TextStyle largeTextStyle(
    {double fontSize = FontSize.s30, Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.bold, color);
}
TextStyle titleTextStyle(
    {double fontSize = FontSize.s14, Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.semiBold, color);
}
TextStyle titleTextStyleBold(
    {double fontSize = FontSize.s14, Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.bold, color);
}
TextStyle titleTextStyleNormal(
    {double fontSize = FontSize.s14, Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
}
TextStyle subtitleTextStyle(
    {double fontSize = FontSize.s12, Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
}
TextStyle getBoldStyle(
    {double fontSize = FontSize.s12, Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.bold, color);
}

// semi bold text style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.semiBold, color);
}


// medium text style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
}