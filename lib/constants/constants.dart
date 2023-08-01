import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';

class Constants{
  static const appName =  'App name';
  static bool isRightToLeft = false;
  static String? userName;
  static String? userEmail;
  static String? providerId;
  static List<String> inAppPurchases = ['com.proversion'];

  static const razorpayKey = 'rzp_test_jDl2SjSKYlghAD';

  static const flutterWaveEncryptionKey = 'e916067f284151ea8193f9f6';
  static const flutterWavePublicKey = 'FLWPUBK-41bb1137b6ba200efddf685194c57eed-X';
  static const stripePublishableKey = 'pk_test_51HyFNTAKWfZAkcs9vyUjXk3HNlZJGDyNrTlVYGsXG7IYB8v9F5RwpR8zwe0W1wPBRULl2LcNCZBdUh35q6yWsN0v002D5UQ5dU';
  static const stripeSecretKey = 'sk_test_51HyFNTAKWfZAkcs9qtlNyzsvCvEOufRCYaa4jaX2iU72CHi4K7QcrhSguizZHacdqkq77fIDW0AwfHujaw8Chdxw00iZKbshxG';

  static const braintreeTokenizationKey = 'sandbox_d5bkvypz_7c9bdgy6qzqnnm4s';
}

class Urls{
  static const supportUrl =  'https://www.google.com';
  static const privacyPolicyUrl = 'https://www.google.com';
  static const termsUrl = 'https://www.google.com';
  static const aboutUs = 'https://www.google.com';
  static const disclaimerUrl = 'https://www.google.com';
  static const yourAppLinkForSharing = 'https://www.google.com';
}

// class ThemeColors{
//   static const PrimaryBackgroundColor =  Colors.black87;
//   static const PrimaryColor =  Colors.white;
//   static const PrimaryTextColor =  Colors.black87;
//   static const PrimaryLightTextColor =  Colors.white;
//   static const BorderColor =  Color(0xEBF0FF);
// }


String getRandString(int len) {
  var random = Random.secure();
  var values = List<int>.generate(len, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}

String getInitials(name) {
  List<String> nameParts = name.trim().split(' ');
  if (nameParts.length > 1) {
    return nameParts[0].substring(0, 1).toUpperCase() +
        nameParts[1].substring(0, 1).toUpperCase();
  } else {
    return nameParts[0].substring(0, 1).toUpperCase();
  }
}

GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_nav__bar');
