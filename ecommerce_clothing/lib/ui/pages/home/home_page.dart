import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import 'widgets/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5D6B7D),
      body: Column(
        children: const [
          MyAppBar(),
          HomeBody(),
        ],
      ),
    );
  }
}
