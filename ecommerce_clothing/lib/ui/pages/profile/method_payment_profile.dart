import 'package:ecommerce_clothing/ui/const/const.dart';
import 'package:ecommerce_clothing/ui/pages/profile/widgets/credit_card.dart';
import 'package:ecommerce_clothing/ui/widgets/button_credit_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreditCardPage extends StatelessWidget {
  const CreditCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: CosntColors.backgroundBLue,
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ButtonCreditCard(
                    onTap: () => Get.back(),
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                const CreditCard(),
              ],
            ),
          )),
    );
  }
}
