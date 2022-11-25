import 'dart:ui';

import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: size.width,
      height: 200,
      child: ClipRect(
        child: Stack(
          children: [
            const Center(
                child: ImageIcon(
              AssetImage('assets/icons/trinity500px.png'),
              size: 120,
            )),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    color: Colors.black.withOpacity(0.8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ImageIcon(
                            AssetImage('assets/icons/wifi_icon.png'),
                            color: Colors.white,
                          ),
                          Text(
                            'B A N C O L O M B I A',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 35, left: 15, bottom: 25),
                      child: Text(
                        '7532 3546 XXXX 9745',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            letterSpacing: 2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'NOMBRE',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    letterSpacing: 3),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'ANDREA HERRERA',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    letterSpacing: 4),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                'FECHA VENCIMIENTO',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '05/2032',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
