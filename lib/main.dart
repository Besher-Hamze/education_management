import 'package:education_managment/utils/app_routes.dart';
import 'package:education_managment/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      textDirection: TextDirection.rtl,
      getPages: AppRoutes.namedRoutes,
      initialRoute: RouteWrapper.getInitialRoute,
      defaultTransition: Transition.fadeIn,
    );
  }
}