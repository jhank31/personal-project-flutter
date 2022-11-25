import 'package:ecommerce_clothing/ui/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E-commerce Clothing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'RobotoCondensed'),
      initialRoute: 'login',
      getPages: routes,
    );
  }
}
