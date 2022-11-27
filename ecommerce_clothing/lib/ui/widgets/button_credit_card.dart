import 'package:ecommerce_clothing/ui/const/const.dart';
import 'package:flutter/material.dart';

class ButtonCreditCard extends StatelessWidget {
  final Icon icon;
  final VoidCallback? onTap;
  const ButtonCreditCard({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: CosntColors.backgroundBLue,
        shape: BoxShape.circle,
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(255, 64, 73, 85),
              offset: Offset(4, 4),
              blurRadius: 10,
              spreadRadius: 1),
          BoxShadow(
              color: Color.fromARGB(255, 108, 125, 146),
              offset: Offset(-4, -4),
              blurRadius: 10,
              spreadRadius: 1),
        ],
      ),
      child: IconButton(onPressed: onTap, icon: icon),
    );
  }
}
