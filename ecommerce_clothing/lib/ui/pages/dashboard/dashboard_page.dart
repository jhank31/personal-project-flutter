// ignore_for_file: unused_element
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ecommerce_clothing/ui/pages/catalogue/catalogue_page.dart';

import 'package:ecommerce_clothing/ui/pages/dashboard/dashboard_controller.dart';
import 'package:ecommerce_clothing/ui/pages/home/home_page.dart';
import 'package:ecommerce_clothing/ui/pages/profile/profile_page.dart';

import '../../widgets/widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => DashboardController(),
      child: Scaffold(
          body: Stack(
        children: const [
          _Paginas(),
          BottomNavBar(),
        ],
      )),
    );
  }
}

class _Paginas extends StatelessWidget {
  const _Paginas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<DashboardController>(context);
    return PageView(
      controller: navegacionModel.pageController,
      //esto evita que la persona pueda hacer scroll en el pageview
      physics: const NeverScrollableScrollPhysics(),
      children: const <Widget>[
        HomePage(),
        CataloguePage(),
        ProfilePage(),
      ],
    );
  }
}
