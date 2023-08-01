import 'dart:ui';

import 'package:flutter/material.dart';

class AppConfigConstants {
  // Name of app
  static String appName = 'Service app';
  static String currentVersion = '1.0';

  static String appTagline = 'Share your day activity with friends';
  static const googleMapApiKey = "AIzaSyA4vcqErGvq5NRbvhvq8JKSp0VFpNBBPjE";
  static const agoraApiKey = "52aa6d82f3f14aa3bd36b7a0fb6648f4";

  static const razorpayKey = 'rzp_test_jDl2SjSKYlghAD';
  static const stripeMerchantIdentifier = 'merchant.com.socialified';

  static const restApiBaseUrl =
      'http://dev.fwdtechnology.co/homeservices/api/web/v1/';

  // Socket api url

  static const socketApiBaseUrl = "http://dev.fwdtechnology.co:2000/";

  // Socket api url
  static const encryptionKey = "bbC2H19lkVbQDfakxcrtNMQdd0FloLyw";

  // chat version
  static const int enableEncryption = 1;

  // chat version
  static const int chatVersion = 1;

  // is demo app
  static const bool isDemoApp = true;

  // parameters for delete chat
  static const secondsInADay = 86400;
  static const secondsInThreeDays = 259200;
  static const secondsInSevenDays = 604800;

  static const dummyImage =
      "https://images.unsplash.com/photo-1674851993233-f9bbddca4204?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60";
}

class DesignConstants {
  static double horizontalPadding = 24;
}

class ColorConstants {
  static Color themeColor = Color(0xff10ac84);

  static Color backgroundColor = Colors.white;
  static Color cardColor = Color(0xFFF9F9F9);
  static Color dividerColor = Colors.grey.withOpacity(0.2);
  static Color borderColor = Colors.grey.withOpacity(0.2);
  static Color disabledColor = Colors.grey.withOpacity(0.2);
  static Color shadowColor = Colors.grey;

  static Color inputFieldBackgroundColor = Color(0xFFFAFAFA);
  static Color iconColor = Color(0xFF212121);
  static Color inputFieldTextColor = Color(0xFF212121);
  static Color inputFieldPlaceholderTextColor = Color(0xFF9E9E9E);

  static Color red = Colors.red;
  static Color green = Colors.green;
  static Color orange = Colors.orange;
}

class OrderStatusColorConstants {
  static Color pending = Color(0xffFDB813);
  static Color rescheduled = Color(0xffFFA500);
  static Color confirmed = Color(0xff4CAF50);
  static Color processing = Color(0xff0077C9);
  static Color awaitingShipment = Color(0xff9C27B0);
  static Color partiallyShipped = Color(0xffFDB813);
  static Color shipped = Color(0xff4CAF50);
  static Color awaitingPickup = Color(0xff9C27B0);
  static Color onHold = Color(0xffF44336);
  static Color completed = Color(0xff4CAF50);
  static Color cancelled = Color(0xffF44336);
  static Color declined = Color(0xffF44336);
  static Color refunded = Color(0xff4CAF50);
  static Color disputed = Color(0xffF44336);
  static Color failed = Color(0xffFF44336);
}
