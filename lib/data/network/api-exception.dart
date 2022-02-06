import 'package:flutter/material.dart';

class ApiException implements Exception {
  int code;
  String message;
  Map<String, dynamic> errors;
  bool preventRedirect;
  BuildContext context;

  ApiException(
      {this.code,
        this.message,
        this.preventRedirect = false,
        this.errors,
        @required this.context}) {
    switch (code) {

    }
  }
}

