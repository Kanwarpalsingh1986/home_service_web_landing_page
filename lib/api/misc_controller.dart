import 'package:get/get.dart';
import '../model/static_page_model.dart';
import '../model/testimonial_model.dart';
import 'misc_api.dart';

class MiscController extends GetxController {
  RxList<TestimonialModel> testimonials = <TestimonialModel>[].obs;
  RxList<StaticPageModel> staticPages = <StaticPageModel>[].obs;

  getTestimonials() {
    MiscApi.getTestimonials(
        page: 1,
        testimonialsCallback: (result) {
          testimonials.value = result;
        });
  }

  getStaticPages() async {
    await MiscApi.getStaticPages(pagesCallback: (result) async {
      staticPages.value = result;
      update();
    });
  }
}
