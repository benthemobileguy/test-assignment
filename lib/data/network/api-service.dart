import 'dart:convert';
import 'package:android_test_task/data/bloc/main-bloc.dart';
import 'package:android_test_task/data/network/api-exception.dart';
import 'package:android_test_task/presentation/resources/strings-manager.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';


class ApiService {
  BuildContext context;
  ApiService({@required this.context}) {
    print('Api service is called ');
  }

  static Future<Map<String, String>> headers({MainBloc bloc}) async {

    Map<String, String> headers = {
      "Content-type": "application/json",
      "Accept": "application/json"
    };


    return headers;
  }

  Future<Map<String, dynamic>> get(String url) async {
    print('Api service is called to make get request');

    MainBloc bloc = Provider.of<MainBloc>(context, listen:false);
    Map<String, String> _headers = await headers(bloc: bloc);
    http.Response response =
    await http.get(Uri.parse(AppStrings.BASE_URL + url), headers: _headers);
    final responseJson = json.decode(response.body);
    print(responseJson.toString());
    int statusCode = response.statusCode;
    print(response.toString());
    switch (statusCode) {
      case 200:
        Map<String, dynamic> data = json.decode(response.body);
        return data;
        break;

      default:
        dynamic data = json.decode(response.body);

        String msg;
        // lord knows why this was encoded twice
        if (data is String) {
          data = json.decode(data);
          msg = "";
          if (data.values.toList().length > 0) {
            // show first error
            msg = data.values .toList().first[0];
          }
        } else {
          if(data['message'] !=null){
            msg = data['message']['name'];
          }
        }

        throw ApiException(
          context: context,
          message: msg,
          errors: data,
          code: statusCode,
        );
        break;
    }
  }
}
