import 'package:ecommerce_clothing/ui/const/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/widgets.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
              color: CosntColors.blueBottomNavBar,
              borderRadius: BorderRadius.circular(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NO PIENSES,',
                      style: GoogleFonts.didactGothic(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      'SOLO HAZLO',
                      style: GoogleFonts.didactGothic(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: GeneralButton(
                  height: 50,
                  text: 'Ordena ya',
                  width: 115,
                  color: CosntColors.orange,
                  colorText: CosntColors.darkText,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        const Positioned(
            right: 10,
            bottom: 50,
            child: Image(image: AssetImage('assets/imgs/zapatos_home.png')))
      ],
    );
  }
}
