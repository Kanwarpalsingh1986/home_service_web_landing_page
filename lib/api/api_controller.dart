import 'dart:convert';
import 'package:http/http.dart' as http;
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
    print(url);
    return http.get(Uri.parse(url), headers: {
      "Content-type": "application/json"
    }).then((http.Response response) async {
      dynamic data = _decoder.convert(response.body);
      print(data);
      if (data['status'] == 401 && data['data'] == null) {
        // Get.offAll(() => AskForLogin());
      } else {
        return ApiResponse.fromJson(data);
      }
      return null;
    });
  }
}
