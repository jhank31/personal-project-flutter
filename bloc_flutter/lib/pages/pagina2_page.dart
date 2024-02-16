import 'package:bloc_flutter/bloc/user/user_bloc.dart';
import 'package:bloc_flutter/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                BlocProvider.of<UserBloc>(context, listen: false).add(
                    ActivateUser(User(
                        nombre: 'Juan',
                        edad: 23,
                        profesiones: ['Ingeniero', 'Programador'])));
              },
              child: const Text('Establecer Usuario',
                  style: TextStyle(color: Colors.white))),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                BlocProvider.of<UserBloc>(context, listen: false)
                    .add(ChangeEdadUserEvent(30));
              },
              child: const Text('Cambiar Edad',
                  style: TextStyle(color: Colors.white))),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                BlocProvider.of<UserBloc>(context, listen: false)
                    .add(AddProfesionUserEvent("Trader"));
              },
              child: const Text('Añadir Profesion',
                  style: TextStyle(color: Colors.white))),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                BlocProvider.of<UserBloc>(context, listen: false)
                    .add(DeleteUserEvent());
              },
              child: const Text('Eliminar Usuario',
                  style: TextStyle(color: Colors.white))),
        ],
      )),
    );
  }
}
