import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../widgets/widgets.dart';
import 'widgets/title_register.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                TitleRegsiter(size: size),
                const SizedBox(
                  height: 50,
                ),
                const InputLoginRegister(
                    hintText: 'Nombre',
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
                  text: 'Registrarse',
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
                          '¿Ya tienes cuenta?',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.toNamed('/login');
                            },
                            child: const Text(
                              'Inicia sesión ahora',
                              style: TextStyle(
                                  color: Color(0xffF6A80B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
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
