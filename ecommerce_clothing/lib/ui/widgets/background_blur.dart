import 'dart:ui';

import 'package:flutter/material.dart';

class BackGroundBlur extends StatelessWidget {
  final Widget? child;
  final String image;
  final double sigmaX;
  final double sigmaY;
  const BackGroundBlur(
      {super.key,
      required this.image,
      required this.sigmaX,
      required this.sigmaY,
      this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      )),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          child: child,
        ),
      ),
    );
  }
}
