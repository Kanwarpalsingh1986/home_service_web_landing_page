import 'package:flutter/material.dart';
import 'package:service_app/helper/app_config_constants.dart';

enum ThemeIcon {
  setting,
  account,
  cart,
  videoCamera,
  security,
  more,
  mobile,
  message,
}

class ThemeIconWidget extends StatelessWidget {
  final ThemeIcon icon;
  final double? size;
  final Color? color;

  const ThemeIconWidget(this.icon, {Key? key, this.size, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size ?? 20, child: getIcon(context));
  }

  Widget getIcon(BuildContext context) {
    switch (icon) {
      case ThemeIcon.cart:
        return Icon(
          Icons.shopping_cart_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.setting:
        return Icon(
          Icons.settings_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.security:
        return Icon(
          Icons.security,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.account:
        return Icon(
          Icons.account_circle_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.more:
        return Icon(
          Icons.more_horiz,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.mobile:
        return Icon(
          Icons.phone_enabled_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.message:
        return Icon(
          Icons.add_comment_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.videoCamera:
        return Icon(
          Icons.videocam,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
    }
  }
}
