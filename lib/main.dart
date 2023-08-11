import 'package:flutter/material.dart';
import 'package:planet_animatons/controller/planet_controller.dart';
import 'package:planet_animatons/utiles/routes_utiles.dart';
import 'package:planet_animatons/views/screens/home_page.dart';
import 'package:planet_animatons/views/screens/info_page.dart';
import 'package:planet_animatons/views/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => planet_Provider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: AllRoutes.splashScreens,
      routes: {
        AllRoutes.homePage: (context) => home_Page(),
        AllRoutes.infoPage: (context) => info_page(),
        AllRoutes.splashScreens: (context) => splash_Page(),
      },
    );
  }
}
