import 'package:ecommerce_clothing/ui/pages/dashboard/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<DashboardController>(context);
    return Positioned(
      right: 10,
      left: 10,
      bottom: 20,
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Color(0xff3A4757),
        ),
        child: GNav(
            selectedIndex: navegacionModel.paginaActual,
            onTabChange: (index) => navegacionModel.paginaActual = index,
            color: Colors.white,
            activeColor: const Color(0xffE0E5EB),
            tabBackgroundColor: const  Color(0xff5D6B7D),
            padding: const EdgeInsets.all(16),
            gap: 20,
            backgroundColor: const Color(0xff3A4757),
            iconSize: 30,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.line_style_outlined,
                text: 'Catalogo',
              ),
              GButton(
                icon: Icons.person,
                text: 'Perfil',
              ),
            ]),
      ),
    );
  }
}
