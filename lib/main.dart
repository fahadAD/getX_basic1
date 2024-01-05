import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/languages.dart';
 import 'home.dart';
import 'main1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale("en","US"),
      fallbackLocale: Locale("en","US"),
      translations: Languages(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // getPages: [
      //   GetPage(name: "/", page: () => HomePage()),
      //   GetPage(name: "/screen1", page: () => FirstPage1(name: 'fafddddddddd',)),
      //
      // ],
    );
  }
}
