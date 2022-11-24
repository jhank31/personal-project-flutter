import 'package:ecommerce_clothing/ui/pages/login/login.dart';
import 'package:ecommerce_clothing/ui/pages/register/register.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
      name: '/login',
      page: () => const LoginPage(),
      transition: Transition.leftToRight),
  GetPage(
      name: '/register',
      page: () => const RegisterPage(),
      transition: Transition.rightToLeft),
];
