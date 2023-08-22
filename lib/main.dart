import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_and_diet/bindings/search_binding.dart';
import 'package:recipe_and_diet/routes/app_pages.dart';
import 'package:recipe_and_diet/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Recipe App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      initialRoute: AppRoutes.search_screen,
      initialBinding: SearchBinding(),
      getPages: AppPages.list,
    );
  }
}


