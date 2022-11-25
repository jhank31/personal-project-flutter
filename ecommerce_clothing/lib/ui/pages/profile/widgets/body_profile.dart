import 'package:ecommerce_clothing/ui/pages/profile/method_payment_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/widgets.dart';

class BodyProfile extends StatelessWidget {
  const BodyProfile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 100,
        ),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35))),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 25,
              ),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(4, 4),
                        blurRadius: 15,
                        color: Colors.grey,
                        spreadRadius: 3)
                  ]),
              child: const CircleAvatar(
                maxRadius: 80,
                backgroundImage: AssetImage('assets/imgs/foto_perfil.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: const [
                  Text(
                    'Andrea Herrera',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'andrea@gmail.com',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25, left: 15),
              width: size.width,
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonCreditCard(
                    icon: const Icon(
                      Icons.credit_card_outlined,
                    ),
                    onTap: () {
                      Get.to(const CreditCardPage());
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Tarjetas Registradas',
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
            _PropietiesProfile(size: size),
          ],
        ),
      ),
    );
  }
}

class _PropietiesProfile extends StatelessWidget {
  const _PropietiesProfile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 25),
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              ListTile(
                title: Text('Pais: Colombia',
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
              ListTile(
                title: Text('Departamento: Quindio',
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
              ListTile(
                title: Text('Edad: 22',
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
              ListTile(
                title: Text('Ciudad: Armenia',
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
              ListTile(
                title: Text('Numero: 319-860-4856',
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
              ListTile(
                title: Text('Nivel: Height Trinity',
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
              ListTile(
                title: Text('Puntos: 120.000',
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
