import 'package:flutter/material.dart';
import 'package:travel/constant/app_font.dart';
import 'constant/app_color.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppFont.merriweather,
        primaryColor: AppColor.primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const SplashScreen(),
      },
    );
  }
}
