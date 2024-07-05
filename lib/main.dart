import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_demo/screen/first_screen.dart';
import 'package:getx_demo/screen/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: () => const MyHomePage()),
        // GetPage(name: "/f", page: () => const FirstScreen()),
      ],

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(



        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home:   MyHomePage(),
    );
  }
}
