import 'package:get/get.dart';
import '../model/testimonial_model.dart';
import 'misc_api.dart';

class MiscController extends GetxController {
  RxList<TestimonialModel> testimonials = <TestimonialModel>[].obs;

  getTestimonials() {
    MiscApi.getTestimonials(
        page: 1,
        testimonialsCallback: (result) {
          testimonials.value = result;
        });
  }
}
