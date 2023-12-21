import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirza_dev/utils/theme/app_theme.dart';
import 'package:mirza_dev/view_features/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      title: "Mirza Mahmud Hossan",
      defaultTransition: Transition.noTransition,
      home: const HomeScreen(),
    );
  }
}
