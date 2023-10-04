import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:service_app/screens/landing_page.dart';
import 'api/misc_controller.dart';
import 'helper/languages.dart';

bool isTutorialSeen = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(MiscController());

  final MiscController miscController = Get.find();
  await miscController.getStaticPages();
  runApp(MultiVendorServicesApp());
}

class MultiVendorServicesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      themeMode: ThemeMode.dark,
      supportedLocales: const <Locale>[
        Locale('hi', 'US'),
        Locale('en', 'SA'),
        Locale('ar', 'SA'),
        Locale('tr', 'SA'),
        Locale('ru', 'SA'),
        Locale('es', 'SA'),
        Locale('fr', 'SA'),
        Locale('pt', 'BR')
      ],
    );
  }
}
