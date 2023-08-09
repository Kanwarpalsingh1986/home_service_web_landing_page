import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import '../helper/localization_strings.dart';
import 'network_constant.dart';
export 'network_constant.dart';

class ApiResponse {
  int? statusCode;
  bool? success;
  dynamic data;
  String? message;

  ApiResponse();

  factory ApiResponse.fromJson(dynamic json) {
    ApiResponse model = ApiResponse();
    model.statusCode = json['status'];
    model.success = json['status'] == 200;
    model.data = json['data'];
    model.message = json['message'];

    if (model.success != true && model.data != null) {
      var errors = model.data['errors'];
      if (errors != null) {
        var messages = model.data['errors']['message'];
        if (messages != null) {
          model.message = (messages as List).first;
        } else {
          if (model.data['errors'] is Map) {
            List errors = (model.data['errors'] as Map).values.first;
            model.message = errors.first;
          }
        }
      }
    }

    return model;
  }
}

class ApiWrapper {
  final JsonDecoder _decoder = new JsonDecoder();

  Future<ApiResponse?> getApi({required String url}) async {
    return http.get(Uri.parse(url), headers: {
      "Content-type": "application/json"
    }).then((http.Response response) async {
      dynamic data = _decoder.convert(response.body);
      // log(data.toString());

      if (data['status'] == 401 && data['data'] == null) {
        // Get.offAll(() => AskForLogin());
      } else {
        return ApiResponse.fromJson(data);
      }
      return null;
    });
  }
}
