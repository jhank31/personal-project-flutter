import 'package:flutter/material.dart';

class TitleLogin extends StatelessWidget {
  const TitleLogin({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(-1, 0),
      margin: EdgeInsets.only(top: size.height * 0.07),
      width: size.width * 0.85,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'INGRESA EN',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Cormorant',
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          Text(
            'TRINITY',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Cormorant',
                fontWeight: FontWeight.bold,
                fontSize: 30),
          )
        ],
      ),
    );
  }
}
