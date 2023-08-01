import 'package:flutter/material.dart';
import 'package:service_app/components/custom_texts.dart';
import 'package:service_app/helper/theme_icon.dart';
import 'package:service_app/helper/app_config_constants.dart';
import 'package:service_app/extensions/extension.dart';
import 'package:service_app/helper/localization_strings.dart';
import 'package:get/get.dart';

class AppThemeButton extends StatelessWidget {
  final String? text;
  final double? height;
  final double? width;
  final double? cornerRadius;
  final bool? isEnabled;
  final Widget? leading;
  final Widget? trailing;
  final Color? enabledBackgroundColor;
  final Color? disabledBackgroundColor;

  final TextStyle? enabledTextStyle;
  final TextStyle? disabledTextStyle;

  final VoidCallback? onPress;

  const AppThemeButton({
    Key? key,
    required this.text,
    required this.onPress,
    this.height,
    this.width,
    this.cornerRadius,
    this.leading,
    this.trailing,
    this.enabledBackgroundColor,
    this.disabledBackgroundColor,
    this.enabledTextStyle,
    this.disabledTextStyle,
    this.isEnabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double btnHeight = ((height ?? 50) * scale);
    return Container(
      width: width,
      height: btnHeight,
      decoration: BoxDecoration(
        color: isEnabled == false
            ? disabledBackgroundColor ??
                Theme.of(context).disabledColor.withOpacity(0.2)
            : enabledBackgroundColor ?? ColorConstants.themeColor,
        borderRadius: BorderRadius.all(Radius.circular(btnHeight / 2)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(0, 5),
            blurRadius: btnHeight / 2,
            color: ColorConstants.themeColor.withOpacity(0.5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leading != null ? leading!.hP8 : Container(),
          Center(
            child: BodyLargeText(
              text!,
              color: Colors.white,
            ).hP25,
          ),
          trailing != null ? trailing!.hP4 : Container()
        ],
      ),
    ).ripple(() {
      if (isEnabled != false) {
        onPress!();
      }
    });
  }
}

class BorderButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPress;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? height;
  final double? cornerRadius;
  final TextStyle? textStyle;
  final double? width;

  const BorderButton(
      {Key? key,
      required this.text,
      required this.onPress,
      this.height,
      this.width,
      this.cornerRadius,
      this.borderColor,
      this.backgroundColor,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double btnHeight = ((height ?? 50) * scale);

    return Container(
      width: width,
      height: btnHeight,
      color: backgroundColor,
      child: Center(
        child: BodyLargeText(
          text!,
        ).hP25,
      ),
    )
        .borderWithRadius(
            value: 1,
            radius: btnHeight / 2,
            color: borderColor ?? ColorConstants.borderColor)
        .ripple(onPress!);
  }
}

class SocialLoginButton extends StatelessWidget {
  final String text;
  final String icon;

  final VoidCallback onPress;

  const SocialLoginButton({
    Key? key,
    required this.text,
    required this.onPress,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60 * scale,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 30,
              child: Image.asset(
                icon,
                height: 24 * scale,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            BodyLargeText(
              text,
              weight: TextWeight.medium,
            ).hP8,
          ],
        ),
      ),
    )
        .borderWithRadius(
            value: 1, radius: 15, color: ColorConstants.dividerColor)
        .ripple(onPress);
  }
}

class CartButton extends StatelessWidget {
  final int quantity;
  final double? height;
  final double? width;
  final double? cornerRadius;
  final bool? isEnabled;
  final Color? enabledBackgroundColor;
  final Color? disabledBackgroundColor;

  final TextStyle? enabledTextStyle;
  final TextStyle? disabledTextStyle;

  final VoidCallback addCallbackHandler;
  final VoidCallback removeCallbackHandler;

  const CartButton({
    Key? key,
    required this.quantity,
    this.height,
    this.width,
    this.cornerRadius,
    this.isEnabled,
    this.enabledBackgroundColor,
    this.disabledBackgroundColor,
    this.enabledTextStyle,
    this.disabledTextStyle,
    required this.addCallbackHandler,
    required this.removeCallbackHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double btnHeight = ((height ?? 50) * scale);
    return Container(
      width: width,
      height: btnHeight,
      decoration: BoxDecoration(
        color: isEnabled == false
            ? disabledBackgroundColor ??
                Theme.of(context).disabledColor.withOpacity(0.2)
            : enabledBackgroundColor ?? ColorConstants.themeColor,
        borderRadius: BorderRadius.all(Radius.circular(btnHeight / 2)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(0, 5),
            blurRadius: btnHeight / 2,
            color: ColorConstants.themeColor.withOpacity(0.5),
          ),
        ],
      ),
      child: quantity == 0
          ? Center(
              child: BodyLargeText(
                addToCart.tr,
                color: Colors.white,
              ).hP8,
            ).ripple(() {
              addCallbackHandler();
            })
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ThemeIconWidget(
                  ThemeIcon.minus,
                  color: Colors.white,
                  size: 25,
                ).ripple(() {
                  removeCallbackHandler();
                }),
                Center(
                  child: Heading5Text(
                    '${quantity}',
                    color: Colors.white,
                  ).hP8,
                ),
                ThemeIconWidget(
                  ThemeIcon.plus,
                  color: Colors.white,
                  size: 25,
                ).ripple(() {
                  addCallbackHandler();
                }),
              ],
            ),
    );
  }
}

class CartButton2 extends StatelessWidget {
  final bool isAdded;
  final double? height;
  final double? width;
  final double? cornerRadius;

  final TextStyle? enabledTextStyle;
  final TextStyle? disabledTextStyle;

  final VoidCallback addCallbackHandler;
  final VoidCallback removeCallbackHandler;

  const CartButton2({
    Key? key,
    this.isAdded = false,
    this.height,
    this.width,
    this.cornerRadius,
    this.enabledTextStyle,
    this.disabledTextStyle,
    required this.addCallbackHandler,
    required this.removeCallbackHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double btnHeight = ((height ?? 50) * scale);
    return Container(
      width: width,
      height: btnHeight,
      decoration: BoxDecoration(
        color:
            isAdded == false ? ColorConstants.themeColor : ColorConstants.red,
        borderRadius: BorderRadius.all(Radius.circular(btnHeight / 2)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(0, 5),
            blurRadius: btnHeight / 2,
            color: ColorConstants.themeColor.withOpacity(0.5),
          ),
        ],
      ),
      child: isAdded == false
          ? Center(
              child: BodyLargeText(
                addToCart.tr,
                color: Colors.white,
              ).hP25,
            ).ripple(() {
              addCallbackHandler();
            })
          : Center(
              child: BodyLargeText(
                removeFromCart.tr,
                color: Colors.white,
              ).hP25,
            ).ripple(() {
              removeCallbackHandler();
            }),
    );
  }
}
