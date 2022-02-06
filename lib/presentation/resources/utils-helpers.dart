import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';


class UtilsHelpers{
  static Future closeKeyboard(BuildContext context) async{
    return  FocusScope.of(context).unfocus();
  }
  static Future setStatusBar(Color color) async{
    return  SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }
}