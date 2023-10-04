import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:service_app/components/common_components.dart';
import 'package:service_app/components/custom_texts.dart';
import 'package:service_app/extensions/extension.dart';
import 'package:service_app/helper/localization_strings.dart';
import 'package:get/get.dart';
import 'package:service_app/model/testimonial_model.dart';
import '../../helper/app_config_constants.dart';

class TestimonialDetail extends StatelessWidget {
  final TestimonialModel testimonial;

  TestimonialDetail({Key? key, required this.testimonial}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          verticalSpacer(height: 80),
          Heading1Text(
            testimonials.tr,
            weight: TextWeight.bold,
          ),
          verticalSpacer(height: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: CachedNetworkImage(
                  imageUrl: testimonial.image,
                  fit: BoxFit.cover,
                  height: 100,
                  // height: double.infinity,
                  width: 100,
                ).round(5),
              ),
              verticalSpacer(height: 20),
              BodyLargeText(
                testimonial.title,
                maxLines: 1,
                weight: TextWeight.bold,
              ),
              verticalSpacer(height: 10),
              BodySmallText(
                testimonial.description,
                maxLines: 5,
                color: TextColor.grayscale700,
              ),
              verticalSpacer(height: 20),
              BodyLargeText(testimonial.name,
                  maxLines: 5, weight: TextWeight.bold),
              verticalSpacer(height: 10),
              BodyLargeText(
                '${testimonial.designation}, ${testimonial.company}',
                maxLines: 5,
                color: TextColor.grayscale700,
              ),
            ],
          ).hp(DesignConstants.horizontalPadding),
          verticalSpacer(height: 100),
        ],
      ),
    ));
  }
}
