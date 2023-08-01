import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:service_app/helper/localization_strings.dart';
import '../extensions/extension.dart';
import '../helper/app_config_constants.dart';
import 'custom_texts.dart';

Widget divider() {
  return Container(
    height: 0.4,
    width: double.infinity,
    color: ColorConstants.dividerColor,
  );
}

Widget verticalSpacer({required double height}) {
  return SizedBox(
    height: height * scale,
  );
}


Widget orWidget(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 0.5,
        width: Get.context!.width * 0.37,
        color: ColorConstants.dividerColor,
      ),
      BodyLargeText(
        or,
      ),
      Container(
        height: 0.5,
        width: Get.context!.width * 0.37,
        color: ColorConstants.dividerColor,
      )
    ],
  );
}