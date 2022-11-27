import 'package:ecommerce_clothing/ui/const/const.dart';
import 'package:flutter/material.dart';

import 'widgets/body_profile.dart';
import 'widgets/top_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: CosntColors.blueBottomNavBar,
        body: Column(
          children: [TopPage(size: size), BodyProfile(size: size)],
        ),
      ),
    );
  }
}
