import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/CounterScreen.dart';
import 'package:getx/Example2state.dart';
import 'package:getx/ExampleThree.dart';
import 'package:getx/FutureBuilder.dart';
import 'package:getx/HomeScreen.dart';
import 'package:getx/ImagepickerExample.dart';
import 'package:getx/LoginExample.dart';
import 'package:getx/Screentwo.dart';
import 'package:getx/res/theme/darkTheme.dart';
import 'package:getx/res/theme/lightTheme.dart';

import 'Language.dart';
import 'Screenone.dart';
import 'res/language.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),// ager kio language select nah ho to
      translations: Language(),
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: const LoginScreen(),
      getPages: [
        GetPage(name: '/', page: () => const LoginScreen()),
        GetPage(name: '/screenOne', page: () =>  ScreenOne(name: 'Umer',)),
        GetPage(name: '/screentwo', page: () =>  ScreenTwo(name: 'Umer',)),
      ],
    );
  }
}

