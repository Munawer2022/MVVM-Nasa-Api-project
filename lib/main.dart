import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:mvvm/res/bottom_app_bar.dart';

import 'package:mvvm/res/theme_data.dart';
import 'package:mvvm/view/all.dart';
import 'package:mvvm/view/home_screen.dart';
import 'package:mvvm/view/mars.dart';
import 'package:mvvm/view/mars_library.dart';

import 'package:mvvm/view/neoWs.dart';
import 'package:mvvm/view/techTransfer.dart';
import 'package:mvvm/view/tle.dart';

import 'package:mvvm/view_model/apod_view_model.dart';
import 'package:mvvm/view_model/mars_library_view_model.dart';

import 'package:mvvm/view_model/mars_view_model.dart';
import 'package:mvvm/view_model/neoWs_view_model.dart';
import 'package:mvvm/view_model/techTransfer_view_model.dart';
import 'package:mvvm/view_model/tle_view_model.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthViewViewModel()),
        ChangeNotifierProvider(create: (_) => NeoWsViewViewModel()),
        ChangeNotifierProvider(create: (_) => MarsViewViewModel()),
        ChangeNotifierProvider(create: (_) => MarsLibraryViewViewModel()),
        ChangeNotifierProvider(create: (_) => TechTransferViewViewModel()),
        ChangeNotifierProvider(create: (_) => TleViewViewModel()),
        ChangeNotifierProvider(
          create: (_) => CustomTheme(),
        ),
      ],
      child: GetMaterialApp(
          theme: CustomTheme.lightTheme,
          darkTheme: CustomTheme.darkTheme,
          themeMode: currentTheme.currentTheme,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          initialRoute: '/home_screen',
          getPages: [
            GetPage(name: '/all', page: () => All()),
            GetPage(name: '/neoWs', page: () => NeoWs()),
            GetPage(name: '/home_screen', page: () => HomeScreen()),
            GetPage(name: '/bottom_bar', page: () => BottomBar()),
            GetPage(name: '/mars', page: () => Mars()),
            GetPage(name: '/marslibrary', page: () => MarsLibrary()),
            GetPage(name: '/techTransfer', page: () => TechTransfer()),
            GetPage(name: '/tle', page: () => TLE()),
          ]

          // initialRoute: RoutesName.home,
          // onGenerateRoute: Routes.generateRoute,
          ),
    );
  }
}
