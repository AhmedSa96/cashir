import 'package:cashir/shared/app_routes.dart';
import 'package:cashir/shared/constants/locales.dart';
import 'package:cashir/shared/constants/colors.dart' as colors;
import 'package:cashir/shared/setup_di.dart';
import 'package:cashir/shared/translations/languages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void setupGet() {
  GetStorage.init();
  setupDI();
}

void main() {
  // setup get package
  setupGet();

  // run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // app title
      title: 'Cashir',
      // translation config
      translations: Languages(),
      locale: DEFAULT_LOCALE,
      fallbackLocale: DEFAULT_LOCALE,
      // theme config
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: colors.primary),
        useMaterial3: true,
      ),
      // routes config
      initialRoute: DEFAULT_ROUTE,
      getPages: appRoutes,
    );
  }
}
