import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart' hide Trans;
import 'package:service_app/screens/landing_page.dart';
import 'package:url_strategy/url_strategy.dart';
import 'helper/languages.dart';

bool isTutorialSeen = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();

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
      builder: EasyLoading.init(),
      themeMode: ThemeMode.dark,
      // localizationsDelegates: context.localizationDelegates,
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   // GlobalCupertinoLocalizations.delegate,
      //   // Add this line
      //   GiphyGetUILocalizations.delegate,
      // ],
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
