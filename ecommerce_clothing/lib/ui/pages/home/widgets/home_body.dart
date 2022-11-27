// ignore_for_file: avoid_unnecessary_containers

import 'package:ecommerce_clothing/ui/pages/home/widgets/order_card.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: const [
          OrderCard(),
        ],
      ),
    ));
  }
}
