import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputLoginRegister extends StatelessWidget {
  final String hintText;
  final FaIcon icon;
  final bool isObscure;
  final TextInputType keyboardType;

  const InputLoginRegister({
    Key? key,
    required this.hintText,
    required this.isObscure,
    required this.keyboardType,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white, width: 1)),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        keyboardType: keyboardType,
        obscureText: isObscure,
        decoration: InputDecoration(
            icon: icon,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
