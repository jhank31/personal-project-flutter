
import 'package:flutter/material.dart';

class DashboardController with ChangeNotifier{
   //propiedad orivada de la clase
  int _paginaActual = 0;

  final PageController _pageController = PageController();

  //el get toma  el valor y se lo asigna a la propiedad privada
  int get paginaActual => _paginaActual;
  //el set establece al valor de la propiedad privada de manera publica
  set paginaActual(int valor) {
    //esta parte es para que se cambien las paginas dependiendo del boton que se oprima
    _pageController.animateToPage(valor,
        duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
    _paginaActual = valor;
    notifyListeners();
  }

  PageController get pageController => _pageController;
}