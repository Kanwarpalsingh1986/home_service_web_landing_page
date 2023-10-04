import '../model/static_page_model.dart';
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

  static getStaticPages(
      {required Function(List<StaticPageModel>) pagesCallback}) async {
    await ApiWrapper()
        .getApi(url: NetworkConstantsUtil.staticPages)
        .then((response) async {
      if (response?.success == true) {
        List pages = response!.data['Page'];
        pagesCallback(pages.map((e) => StaticPageModel.fromJson(e)).toList());
      } else {}
    });
  }
}
