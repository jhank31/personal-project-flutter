import 'package:ecommerce_clothing/ui/const/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerMenuZoom extends StatelessWidget {
  const DrawerMenuZoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              padding: const EdgeInsets.all(20),
              child: const CircleAvatar(
                  maxRadius: 100,
                  backgroundImage:
                      AssetImage('assets/icons/user_profile_icon.png')),
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              onTap: () => Get.toNamed('/help'),
              leading: Icon(
                Icons.help_outline,
                color: CosntColors.orange,
              ),
              title: Text(
                'Ayuda',
                style: TextStyle(color: CosntColors.orange, fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () => Get.toNamed('/settings'),
              leading: Icon(
                Icons.settings_outlined,
                color: CosntColors.orange,
              ),
              title: Text(
                'Configuración',
                style: TextStyle(color: CosntColors.orange, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
