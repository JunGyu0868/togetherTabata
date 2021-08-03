import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:together_tabata/const/ColorList.dart';

//route
import 'main/MainPage.dart';

void main() => runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/main",
      theme: ThemeData(scaffoldBackgroundColor: kBackgroudnColor),
      initialBinding: BindingsBuilder(() {
        // Get.put(TimerVO());
        // Get.put(CountVO());
        // Get.lazyPut<ProfileController>(() => ProfileController());
      }),
      getPages: [
        GetPage(name: '/main', page: () => MainPage()),
      ],
    ));
