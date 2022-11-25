import 'package:ecommerce_clothing/ui/pages/dashboard/dashboard_page.dart';
import 'package:ecommerce_clothing/ui/pages/help/help_page.dart';
import 'package:ecommerce_clothing/ui/pages/login/login_page.dart';
import 'package:ecommerce_clothing/ui/pages/profile/method_payment_profile.dart';
import 'package:ecommerce_clothing/ui/pages/register/register_page.dart';
import 'package:ecommerce_clothing/ui/pages/settings/setting_page.dart';
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
  GetPage(
      name: '/dashboard',
      page: () => const Dashboard(),
      transition: Transition.fade),
  GetPage(
      name: '/settings',
      page: () => const SettingsPage(),
      transition: Transition.fade),
  GetPage(
      name: '/paymentsCard',
      page: () => const CreditCardPage(),
      transition: Transition.fade),
  GetPage(
      name: '/help', page: () => const HelpPage(), transition: Transition.fade),
];
