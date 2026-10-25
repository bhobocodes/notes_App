import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:notes_app/routes/route_pages.dart';
import 'package:notes_app/routes/routes_name.dart';
import 'package:notes_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.backgroundColor,

      ),
      getPages: RoutePages.routes,
      initialRoute: RouteNames.name,
    );
  }
}