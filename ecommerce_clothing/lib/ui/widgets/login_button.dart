import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final double width;
  final double height;
  final List<Color> colors;
  final String text;
  final VoidCallback? onTap;
  const LoginButton({
    Key? key,
    required this.width,
    required this.height,
    required this.colors,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        onPressed: onTap,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: const EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(12.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: width, minHeight: height),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
