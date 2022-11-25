import 'package:flutter/material.dart';

import 'package:ecommerce_clothing/ui/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'widgets/title_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: BackGroundBlur(
          image: 'assets/imgs/backlogin2.jpg',
          sigmaX: 5,
          sigmaY: 5,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                TitleLogin(size: size),
                const SizedBox(
                  height: 50,
                ),
                const InputLoginRegister(
                    hintText: 'Email',
                    isObscure: false,
                    keyboardType: TextInputType.emailAddress,
                    icon: FaIcon(
                      FontAwesomeIcons.user,
                      color: Colors.white,
                    )),
                const SizedBox(
                  height: 25,
                ),
                const InputLoginRegister(
                  hintText: 'Password',
                  isObscure: false,
                  keyboardType: TextInputType.emailAddress,
                  icon: FaIcon(
                    FontAwesomeIcons.lock,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                LoginButton(
                  colors: const [Color(0xff3E3D3B), Color(0xffD67112)],
                  height: 50,
                  text: 'Inicia Sesión',
                  width: size.width * 0.8,
                  onTap: () => Get.toNamed('/dashboard'),
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '¿No tienes cuenta?',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.toNamed('/register');
                            },
                            child: const Text(
                              'Registrate ahora',
                              style: TextStyle(
                                  color: Color(0xffF6A80B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        '¿Olvidate tu costraseña?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 1,
                      width: 150,
                    ),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
