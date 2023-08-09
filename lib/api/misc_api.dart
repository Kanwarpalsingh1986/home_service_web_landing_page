import 'dart:typed_data';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import '../helper/localization_strings.dart';
import '../model/testimonial_model.dart';
import 'api_controller.dart';

class MiscApi {
  static getTestimonials(
      {required int page,
      required Function(List<TestimonialModel>) testimonialsCallback}) {
    String url = NetworkConstantsUtil.testimonials;

    url = url + 'page=$page';

    ApiWrapper().getApi(url: url).then((response) {
      if (response?.success == true) {
        if (response?.data['Testimonial'] != null) {
          testimonialsCallback(
            response!.data['Testimonial']['items']
                .map<TestimonialModel>((e) => TestimonialModel.fromJson(e))
                .toList(),
          );
        } else {}
      }
    });
  }
}
